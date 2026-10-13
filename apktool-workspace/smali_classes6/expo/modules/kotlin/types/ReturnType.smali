.class public final Lexpo/modules/kotlin/types/ReturnType;
.super Ljava/lang/Object;
.source "ReturnType.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReturnType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReturnType.kt\nexpo/modules/kotlin/types/ReturnType\n*L\n1#1,69:1\n65#1,2:70\n65#1,2:72\n65#1,2:74\n65#1,2:76\n65#1,2:78\n65#1,2:80\n65#1,2:82\n*S KotlinDebug\n*F\n+ 1 ReturnType.kt\nexpo/modules/kotlin/types/ReturnType\n*L\n46#1:70,2\n47#1:72,2\n48#1:74,2\n49#1:76,2\n50#1:78,2\n51#1:80,2\n52#1:82,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0012\u0010\u0008\u001a\u0004\u0018\u00010\u00012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0001J\u0016\u0010\u000e\u001a\u00020\u000f\"\u0006\u0008\u0000\u0010\u0010\u0018\u0001H\u0080\u0008\u00a2\u0006\u0002\u0008\u0011R\u0012\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0006\u0012\u0002\u0008\u00030\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\n\u001a\u00020\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0012"
    }
    d2 = {
        "Lexpo/modules/kotlin/types/ReturnType;",
        "",
        "klass",
        "Lkotlin/reflect/KClass;",
        "<init>",
        "(Lkotlin/reflect/KClass;)V",
        "converter",
        "Lexpo/modules/kotlin/types/JSTypeConverter;",
        "convertToJS",
        "value",
        "cppType",
        "Lexpo/modules/kotlin/jni/ReturnType;",
        "getCppType",
        "()Lexpo/modules/kotlin/jni/ReturnType;",
        "inheritFrom",
        "",
        "T",
        "inheritFrom$expo_modules_core_release",
        "expo-modules-core_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final converter:Lexpo/modules/kotlin/types/JSTypeConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lexpo/modules/kotlin/types/JSTypeConverter<",
            "*>;"
        }
    .end annotation
.end field

.field private final klass:Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/KClass<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/KClass;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "klass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lexpo/modules/kotlin/types/ReturnType;->klass:Lkotlin/reflect/KClass;

    .line 25
    move-object p1, p0

    check-cast p1, Lexpo/modules/kotlin/types/ReturnType;

    .line 26
    iget-object p1, p0, Lexpo/modules/kotlin/types/ReturnType;->klass:Lkotlin/reflect/KClass;

    .line 27
    const-class v0, Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lexpo/modules/kotlin/types/JSTypeConverter$PassThroughConverter;

    invoke-direct {p1}, Lexpo/modules/kotlin/types/JSTypeConverter$PassThroughConverter;-><init>()V

    check-cast p1, Lexpo/modules/kotlin/types/JSTypeConverter;

    goto/16 :goto_0

    .line 28
    :cond_0
    const-class v0, Landroid/os/Bundle;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Lexpo/modules/kotlin/types/JSTypeConverter$BundleConverter;

    invoke-direct {p1}, Lexpo/modules/kotlin/types/JSTypeConverter$BundleConverter;-><init>()V

    check-cast p1, Lexpo/modules/kotlin/types/JSTypeConverter;

    goto/16 :goto_0

    .line 29
    :cond_1
    const-class v0, [I

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p1, Lexpo/modules/kotlin/types/JSTypeConverter$IntArrayConverter;

    invoke-direct {p1}, Lexpo/modules/kotlin/types/JSTypeConverter$IntArrayConverter;-><init>()V

    check-cast p1, Lexpo/modules/kotlin/types/JSTypeConverter;

    goto/16 :goto_0

    .line 30
    :cond_2
    const-class v0, [F

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p1, Lexpo/modules/kotlin/types/JSTypeConverter$FloatArrayConverter;

    invoke-direct {p1}, Lexpo/modules/kotlin/types/JSTypeConverter$FloatArrayConverter;-><init>()V

    check-cast p1, Lexpo/modules/kotlin/types/JSTypeConverter;

    goto/16 :goto_0

    .line 31
    :cond_3
    const-class v0, [D

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance p1, Lexpo/modules/kotlin/types/JSTypeConverter$DoubleArrayConverter;

    invoke-direct {p1}, Lexpo/modules/kotlin/types/JSTypeConverter$DoubleArrayConverter;-><init>()V

    check-cast p1, Lexpo/modules/kotlin/types/JSTypeConverter;

    goto/16 :goto_0

    .line 32
    :cond_4
    const-class v0, [Z

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance p1, Lexpo/modules/kotlin/types/JSTypeConverter$BooleanArrayConverter;

    invoke-direct {p1}, Lexpo/modules/kotlin/types/JSTypeConverter$BooleanArrayConverter;-><init>()V

    check-cast p1, Lexpo/modules/kotlin/types/JSTypeConverter;

    goto/16 :goto_0

    .line 33
    :cond_5
    const-class v0, [B

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance p1, Lexpo/modules/kotlin/types/JSTypeConverter$ByteArrayConverter;

    invoke-direct {p1}, Lexpo/modules/kotlin/types/JSTypeConverter$ByteArrayConverter;-><init>()V

    check-cast p1, Lexpo/modules/kotlin/types/JSTypeConverter;

    goto/16 :goto_0

    .line 34
    :cond_6
    const-class v0, Ljava/net/URI;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance p1, Lexpo/modules/kotlin/types/JSTypeConverter$URIConverter;

    invoke-direct {p1}, Lexpo/modules/kotlin/types/JSTypeConverter$URIConverter;-><init>()V

    check-cast p1, Lexpo/modules/kotlin/types/JSTypeConverter;

    goto/16 :goto_0

    .line 35
    :cond_7
    const-class v0, Ljava/net/URL;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance p1, Lexpo/modules/kotlin/types/JSTypeConverter$URLConverter;

    invoke-direct {p1}, Lexpo/modules/kotlin/types/JSTypeConverter$URLConverter;-><init>()V

    check-cast p1, Lexpo/modules/kotlin/types/JSTypeConverter;

    goto/16 :goto_0

    .line 36
    :cond_8
    const-class v0, Landroid/net/Uri;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance p1, Lexpo/modules/kotlin/types/JSTypeConverter$AndroidUriConverter;

    invoke-direct {p1}, Lexpo/modules/kotlin/types/JSTypeConverter$AndroidUriConverter;-><init>()V

    check-cast p1, Lexpo/modules/kotlin/types/JSTypeConverter;

    goto :goto_0

    .line 37
    :cond_9
    const-class v0, Ljava/io/File;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance p1, Lexpo/modules/kotlin/types/JSTypeConverter$FileConverter;

    invoke-direct {p1}, Lexpo/modules/kotlin/types/JSTypeConverter$FileConverter;-><init>()V

    check-cast p1, Lexpo/modules/kotlin/types/JSTypeConverter;

    goto :goto_0

    .line 38
    :cond_a
    const-class v0, Lkotlin/Pair;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance p1, Lexpo/modules/kotlin/types/JSTypeConverter$PairConverter;

    invoke-direct {p1}, Lexpo/modules/kotlin/types/JSTypeConverter$PairConverter;-><init>()V

    check-cast p1, Lexpo/modules/kotlin/types/JSTypeConverter;

    goto :goto_0

    .line 39
    :cond_b
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance p1, Lexpo/modules/kotlin/types/JSTypeConverter$LongConverter;

    invoke-direct {p1}, Lexpo/modules/kotlin/types/JSTypeConverter$LongConverter;-><init>()V

    check-cast p1, Lexpo/modules/kotlin/types/JSTypeConverter;

    goto :goto_0

    .line 40
    :cond_c
    const-class v0, Lkotlin/time/Duration;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance p1, Lexpo/modules/kotlin/types/JSTypeConverter$DurationConverter;

    invoke-direct {p1}, Lexpo/modules/kotlin/types/JSTypeConverter$DurationConverter;-><init>()V

    check-cast p1, Lexpo/modules/kotlin/types/JSTypeConverter;

    goto :goto_0

    .line 41
    :cond_d
    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    new-instance p1, Lexpo/modules/kotlin/types/JSTypeConverter$AnyConverter;

    invoke-direct {p1}, Lexpo/modules/kotlin/types/JSTypeConverter$AnyConverter;-><init>()V

    check-cast p1, Lexpo/modules/kotlin/types/JSTypeConverter;

    goto :goto_0

    :cond_e
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_16

    .line 70
    invoke-static {p0}, Lexpo/modules/kotlin/types/ReturnType;->access$getKlass$p(Lexpo/modules/kotlin/types/ReturnType;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object p1

    .line 71
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 46
    new-instance p1, Lexpo/modules/kotlin/types/JSTypeConverter$MapConverter;

    invoke-direct {p1}, Lexpo/modules/kotlin/types/JSTypeConverter$MapConverter;-><init>()V

    check-cast p1, Lexpo/modules/kotlin/types/JSTypeConverter;

    goto/16 :goto_1

    .line 72
    :cond_f
    invoke-static {p0}, Lexpo/modules/kotlin/types/ReturnType;->access$getKlass$p(Lexpo/modules/kotlin/types/ReturnType;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object p1

    .line 73
    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 47
    new-instance p1, Lexpo/modules/kotlin/types/JSTypeConverter$EnumConverter;

    invoke-direct {p1}, Lexpo/modules/kotlin/types/JSTypeConverter$EnumConverter;-><init>()V

    check-cast p1, Lexpo/modules/kotlin/types/JSTypeConverter;

    goto/16 :goto_1

    .line 74
    :cond_10
    invoke-static {p0}, Lexpo/modules/kotlin/types/ReturnType;->access$getKlass$p(Lexpo/modules/kotlin/types/ReturnType;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object p1

    .line 75
    const-class v0, Lexpo/modules/kotlin/records/Record;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 48
    new-instance p1, Lexpo/modules/kotlin/types/JSTypeConverter$RecordConverter;

    invoke-direct {p1}, Lexpo/modules/kotlin/types/JSTypeConverter$RecordConverter;-><init>()V

    check-cast p1, Lexpo/modules/kotlin/types/JSTypeConverter;

    goto :goto_1

    .line 76
    :cond_11
    invoke-static {p0}, Lexpo/modules/kotlin/types/ReturnType;->access$getKlass$p(Lexpo/modules/kotlin/types/ReturnType;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object p1

    .line 77
    const-class v0, Lexpo/modules/kotlin/records/formatters/FormattedRecord;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 49
    new-instance p1, Lexpo/modules/kotlin/types/JSTypeConverter$FormattedRecordConverter;

    invoke-direct {p1}, Lexpo/modules/kotlin/types/JSTypeConverter$FormattedRecordConverter;-><init>()V

    check-cast p1, Lexpo/modules/kotlin/types/JSTypeConverter;

    goto :goto_1

    .line 78
    :cond_12
    invoke-static {p0}, Lexpo/modules/kotlin/types/ReturnType;->access$getKlass$p(Lexpo/modules/kotlin/types/ReturnType;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object p1

    .line 79
    const-class v0, Lexpo/modules/kotlin/typedarray/RawTypedArrayHolder;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 50
    new-instance p1, Lexpo/modules/kotlin/types/JSTypeConverter$RawTypedArrayHolderConverter;

    invoke-direct {p1}, Lexpo/modules/kotlin/types/JSTypeConverter$RawTypedArrayHolderConverter;-><init>()V

    check-cast p1, Lexpo/modules/kotlin/types/JSTypeConverter;

    goto :goto_1

    .line 80
    :cond_13
    invoke-static {p0}, Lexpo/modules/kotlin/types/ReturnType;->access$getKlass$p(Lexpo/modules/kotlin/types/ReturnType;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object p1

    .line 81
    const-class v0, [Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 51
    new-instance p1, Lexpo/modules/kotlin/types/JSTypeConverter$ArrayConverter;

    invoke-direct {p1}, Lexpo/modules/kotlin/types/JSTypeConverter$ArrayConverter;-><init>()V

    check-cast p1, Lexpo/modules/kotlin/types/JSTypeConverter;

    goto :goto_1

    .line 82
    :cond_14
    invoke-static {p0}, Lexpo/modules/kotlin/types/ReturnType;->access$getKlass$p(Lexpo/modules/kotlin/types/ReturnType;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object p1

    .line 83
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 52
    new-instance p1, Lexpo/modules/kotlin/types/JSTypeConverter$CollectionConverter;

    invoke-direct {p1}, Lexpo/modules/kotlin/types/JSTypeConverter$CollectionConverter;-><init>()V

    check-cast p1, Lexpo/modules/kotlin/types/JSTypeConverter;

    goto :goto_1

    .line 53
    :cond_15
    new-instance p1, Lexpo/modules/kotlin/types/JSTypeConverter$PassThroughConverter;

    invoke-direct {p1}, Lexpo/modules/kotlin/types/JSTypeConverter$PassThroughConverter;-><init>()V

    check-cast p1, Lexpo/modules/kotlin/types/JSTypeConverter;

    .line 25
    :cond_16
    :goto_1
    iput-object p1, p0, Lexpo/modules/kotlin/types/ReturnType;->converter:Lexpo/modules/kotlin/types/JSTypeConverter;

    return-void
.end method

.method public static final synthetic access$getKlass$p(Lexpo/modules/kotlin/types/ReturnType;)Lkotlin/reflect/KClass;
    .locals 0

    .line 22
    iget-object p0, p0, Lexpo/modules/kotlin/types/ReturnType;->klass:Lkotlin/reflect/KClass;

    return-object p0
.end method


# virtual methods
.method public final convertToJS(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 58
    iget-object v0, p0, Lexpo/modules/kotlin/types/ReturnType;->converter:Lexpo/modules/kotlin/types/JSTypeConverter;

    invoke-interface {v0, p1}, Lexpo/modules/kotlin/types/JSTypeConverter;->convertToJS(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getCppType()Lexpo/modules/kotlin/jni/ReturnType;
    .locals 1

    .line 62
    iget-object v0, p0, Lexpo/modules/kotlin/types/ReturnType;->converter:Lexpo/modules/kotlin/types/JSTypeConverter;

    invoke-interface {v0}, Lexpo/modules/kotlin/types/JSTypeConverter;->getReturnType()Lexpo/modules/kotlin/jni/ReturnType;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic inheritFrom$expo_modules_core_release()Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()Z"
        }
    .end annotation

    .line 65
    invoke-static {p0}, Lexpo/modules/kotlin/types/ReturnType;->access$getKlass$p(Lexpo/modules/kotlin/types/ReturnType;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x4

    .line 66
    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

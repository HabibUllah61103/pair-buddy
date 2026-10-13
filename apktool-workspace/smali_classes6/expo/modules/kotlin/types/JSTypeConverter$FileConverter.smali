.class public final Lexpo/modules/kotlin/types/JSTypeConverter$FileConverter;
.super Ljava/lang/Object;
.source "JSTypeConverter.kt"

# interfaces
.implements Lexpo/modules/kotlin/types/JSTypeConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/kotlin/types/JSTypeConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lexpo/modules/kotlin/types/JSTypeConverter<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJSTypeConverter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JSTypeConverter.kt\nexpo/modules/kotlin/types/JSTypeConverter$FileConverter\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n*L\n1#1,238:1\n11#2:239\n*S KotlinDebug\n*F\n+ 1 JSTypeConverter.kt\nexpo/modules/kotlin/types/JSTypeConverter$FileConverter\n*L\n161#1:239\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016R\u0014\u0010\u0008\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lexpo/modules/kotlin/types/JSTypeConverter$FileConverter;",
        "Lexpo/modules/kotlin/types/JSTypeConverter;",
        "Ljava/io/File;",
        "<init>",
        "()V",
        "convertToJS",
        "",
        "value",
        "returnType",
        "Lexpo/modules/kotlin/jni/ReturnType;",
        "getReturnType",
        "()Lexpo/modules/kotlin/jni/ReturnType;",
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
.field public static final $stable:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convertToJS(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 162
    check-cast p1, Ljava/io/File;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValue(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getReturnType()Lexpo/modules/kotlin/jni/ReturnType;
    .locals 1

    .line 166
    sget-object v0, Lexpo/modules/kotlin/jni/ReturnType;->STRING:Lexpo/modules/kotlin/jni/ReturnType;

    return-object v0
.end method

.class public final Lexpo/modules/kotlin/types/JSTypeConverter$AnyConverter;
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
    name = "AnyConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lexpo/modules/kotlin/types/JSTypeConverter<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0002H\u0016R\u0014\u0010\u0007\u001a\u00020\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lexpo/modules/kotlin/types/JSTypeConverter$AnyConverter;",
        "Lexpo/modules/kotlin/types/JSTypeConverter;",
        "",
        "<init>",
        "()V",
        "convertToJS",
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

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convertToJS(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 221
    sget-object v0, Lexpo/modules/kotlin/types/JSTypeConverterProvider;->INSTANCE:Lexpo/modules/kotlin/types/JSTypeConverterProvider;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lexpo/modules/kotlin/types/JSTypeConverterProvider;->convertToJSValue$default(Lexpo/modules/kotlin/types/JSTypeConverterProvider;Ljava/lang/Object;Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;ZILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getReturnType()Lexpo/modules/kotlin/jni/ReturnType;
    .locals 1

    .line 225
    sget-object v0, Lexpo/modules/kotlin/jni/ReturnType;->UNKNOWN:Lexpo/modules/kotlin/jni/ReturnType;

    return-object v0
.end method

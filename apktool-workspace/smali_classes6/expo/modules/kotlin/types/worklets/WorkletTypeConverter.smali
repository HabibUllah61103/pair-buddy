.class public final Lexpo/modules/kotlin/types/worklets/WorkletTypeConverter;
.super Lexpo/modules/kotlin/types/NonNullableTypeConverter;
.source "WorkletTypeConverter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lexpo/modules/kotlin/types/NonNullableTypeConverter<",
        "Lexpo/modules/kotlin/jni/worklets/Worklet;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\"\u0010\u0008\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u000eH\u0016R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lexpo/modules/kotlin/types/worklets/WorkletTypeConverter;",
        "Lexpo/modules/kotlin/types/NonNullableTypeConverter;",
        "Lexpo/modules/kotlin/jni/worklets/Worklet;",
        "serializableTypeConverter",
        "Lexpo/modules/kotlin/types/TypeConverter;",
        "Lexpo/modules/kotlin/jni/worklets/Serializable;",
        "<init>",
        "(Lexpo/modules/kotlin/types/TypeConverter;)V",
        "convertNonNullable",
        "value",
        "",
        "context",
        "Lexpo/modules/kotlin/AppContext;",
        "forceConversion",
        "",
        "getCppRequiredTypes",
        "Lexpo/modules/kotlin/jni/ExpectedType;",
        "isTrivial",
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
.field private final serializableTypeConverter:Lexpo/modules/kotlin/types/TypeConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lexpo/modules/kotlin/types/TypeConverter<",
            "Lexpo/modules/kotlin/jni/worklets/Serializable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lexpo/modules/kotlin/types/TypeConverter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/types/TypeConverter<",
            "Lexpo/modules/kotlin/jni/worklets/Serializable;",
            ">;)V"
        }
    .end annotation

    const-string v0, "serializableTypeConverter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Lexpo/modules/kotlin/types/NonNullableTypeConverter;-><init>()V

    .line 10
    iput-object p1, p0, Lexpo/modules/kotlin/types/worklets/WorkletTypeConverter;->serializableTypeConverter:Lexpo/modules/kotlin/types/TypeConverter;

    return-void
.end method


# virtual methods
.method public convertNonNullable(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;Z)Lexpo/modules/kotlin/jni/worklets/Worklet;
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lexpo/modules/kotlin/types/worklets/WorkletTypeConverter;->serializableTypeConverter:Lexpo/modules/kotlin/types/TypeConverter;

    invoke-interface {v0, p1, p2, p3}, Lexpo/modules/kotlin/types/TypeConverter;->convert(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;Z)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lexpo/modules/kotlin/jni/worklets/Serializable;

    if-eqz p2, :cond_1

    .line 15
    invoke-virtual {p2}, Lexpo/modules/kotlin/jni/worklets/Serializable;->getType()Lexpo/modules/kotlin/jni/worklets/Serializable$ValueType;

    move-result-object p1

    sget-object p3, Lexpo/modules/kotlin/jni/worklets/Serializable$ValueType;->Worklet:Lexpo/modules/kotlin/jni/worklets/Serializable$ValueType;

    if-ne p1, p3, :cond_0

    .line 19
    new-instance p1, Lexpo/modules/kotlin/jni/worklets/Worklet;

    invoke-direct {p1, p2}, Lexpo/modules/kotlin/jni/worklets/Worklet;-><init>(Lexpo/modules/kotlin/jni/worklets/Serializable;)V

    return-object p1

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Lexpo/modules/kotlin/jni/worklets/Serializable;->getType()Lexpo/modules/kotlin/jni/worklets/Serializable$ValueType;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Expected Serializable of type Worklet but got "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Cannot convert \'"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "\' to Serializable."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public bridge synthetic convertNonNullable(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;Z)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lexpo/modules/kotlin/types/worklets/WorkletTypeConverter;->convertNonNullable(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;Z)Lexpo/modules/kotlin/jni/worklets/Worklet;

    move-result-object p1

    return-object p1
.end method

.method public getCppRequiredTypes()Lexpo/modules/kotlin/jni/ExpectedType;
    .locals 1

    .line 21
    iget-object v0, p0, Lexpo/modules/kotlin/types/worklets/WorkletTypeConverter;->serializableTypeConverter:Lexpo/modules/kotlin/types/TypeConverter;

    invoke-interface {v0}, Lexpo/modules/kotlin/types/TypeConverter;->getCppRequiredTypes()Lexpo/modules/kotlin/jni/ExpectedType;

    move-result-object v0

    return-object v0
.end method

.method public isTrivial()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

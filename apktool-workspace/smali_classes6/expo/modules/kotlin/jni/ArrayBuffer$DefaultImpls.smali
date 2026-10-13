.class public final Lexpo/modules/kotlin/jni/ArrayBuffer$DefaultImpls;
.super Ljava/lang/Object;
.source "ArrayBuffer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/kotlin/jni/ArrayBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
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


# direct methods
.method public static copy(Lexpo/modules/kotlin/jni/ArrayBuffer;)Lexpo/modules/kotlin/jni/NativeArrayBuffer;
    .locals 1

    .line 27
    sget-object v0, Lexpo/modules/kotlin/jni/NativeArrayBuffer;->Companion:Lexpo/modules/kotlin/jni/NativeArrayBuffer$Companion;

    invoke-virtual {v0, p0}, Lexpo/modules/kotlin/jni/NativeArrayBuffer$Companion;->copyOf(Lexpo/modules/kotlin/jni/ArrayBuffer;)Lexpo/modules/kotlin/jni/NativeArrayBuffer;

    move-result-object p0

    return-object p0
.end method

.class public final Lcom/superwall/supercel/FfiConverterRustBuffer$DefaultImpls;
.super Ljava/lang/Object;
.source "CEL.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/supercel/FfiConverterRustBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static lift(Lcom/superwall/supercel/FfiConverterRustBuffer;Lcom/superwall/supercel/RustBuffer$ByValue;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<KotlinType:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/superwall/supercel/FfiConverterRustBuffer<",
            "TKotlinType;>;",
            "Lcom/superwall/supercel/RustBuffer$ByValue;",
            ")TKotlinType;"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    invoke-interface {p0, p1}, Lcom/superwall/supercel/FfiConverterRustBuffer;->liftFromRustBuffer(Lcom/superwall/supercel/RustBuffer$ByValue;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static liftFromRustBuffer(Lcom/superwall/supercel/FfiConverterRustBuffer;Lcom/superwall/supercel/RustBuffer$ByValue;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<KotlinType:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/superwall/supercel/FfiConverterRustBuffer<",
            "TKotlinType;>;",
            "Lcom/superwall/supercel/RustBuffer$ByValue;",
            ")TKotlinType;"
        }
    .end annotation

    const-string v0, "rbuf"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    check-cast p0, Lcom/superwall/supercel/FfiConverter;

    invoke-static {p0, p1}, Lcom/superwall/supercel/FfiConverter$DefaultImpls;->liftFromRustBuffer(Lcom/superwall/supercel/FfiConverter;Lcom/superwall/supercel/RustBuffer$ByValue;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static lower(Lcom/superwall/supercel/FfiConverterRustBuffer;Ljava/lang/Object;)Lcom/superwall/supercel/RustBuffer$ByValue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<KotlinType:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/superwall/supercel/FfiConverterRustBuffer<",
            "TKotlinType;>;TKotlinType;)",
            "Lcom/superwall/supercel/RustBuffer$ByValue;"
        }
    .end annotation

    .line 213
    invoke-interface {p0, p1}, Lcom/superwall/supercel/FfiConverterRustBuffer;->lowerIntoRustBuffer(Ljava/lang/Object;)Lcom/superwall/supercel/RustBuffer$ByValue;

    move-result-object p0

    return-object p0
.end method

.method public static lowerIntoRustBuffer(Lcom/superwall/supercel/FfiConverterRustBuffer;Ljava/lang/Object;)Lcom/superwall/supercel/RustBuffer$ByValue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<KotlinType:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/superwall/supercel/FfiConverterRustBuffer<",
            "TKotlinType;>;TKotlinType;)",
            "Lcom/superwall/supercel/RustBuffer$ByValue;"
        }
    .end annotation

    .line 211
    check-cast p0, Lcom/superwall/supercel/FfiConverter;

    invoke-static {p0, p1}, Lcom/superwall/supercel/FfiConverter$DefaultImpls;->lowerIntoRustBuffer(Lcom/superwall/supercel/FfiConverter;Ljava/lang/Object;)Lcom/superwall/supercel/RustBuffer$ByValue;

    move-result-object p0

    return-object p0
.end method

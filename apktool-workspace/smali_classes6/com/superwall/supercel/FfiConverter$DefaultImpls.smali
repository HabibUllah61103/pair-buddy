.class public final Lcom/superwall/supercel/FfiConverter$DefaultImpls;
.super Ljava/lang/Object;
.source "CEL.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/supercel/FfiConverter;
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
.method public static liftFromRustBuffer(Lcom/superwall/supercel/FfiConverter;Lcom/superwall/supercel/RustBuffer$ByValue;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<KotlinType:",
            "Ljava/lang/Object;",
            "FfiType:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/superwall/supercel/FfiConverter<",
            "TKotlinType;TFfiType;>;",
            "Lcom/superwall/supercel/RustBuffer$ByValue;",
            ")TKotlinType;"
        }
    .end annotation

    const-string v0, "rbuf"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    invoke-virtual {p1}, Lcom/superwall/supercel/RustBuffer$ByValue;->asByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 195
    :try_start_0
    invoke-interface {p0, v0}, Lcom/superwall/supercel/FfiConverter;->read(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    .line 196
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 201
    sget-object v0, Lcom/superwall/supercel/RustBuffer;->Companion:Lcom/superwall/supercel/RustBuffer$Companion;

    invoke-virtual {v0, p1}, Lcom/superwall/supercel/RustBuffer$Companion;->free$supercel_release(Lcom/superwall/supercel/RustBuffer$ByValue;)V

    return-object p0

    .line 197
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "junk remaining in buffer after lifting, something is very wrong!!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 201
    sget-object v0, Lcom/superwall/supercel/RustBuffer;->Companion:Lcom/superwall/supercel/RustBuffer$Companion;

    invoke-virtual {v0, p1}, Lcom/superwall/supercel/RustBuffer$Companion;->free$supercel_release(Lcom/superwall/supercel/RustBuffer$ByValue;)V

    throw p0
.end method

.method public static lowerIntoRustBuffer(Lcom/superwall/supercel/FfiConverter;Ljava/lang/Object;)Lcom/superwall/supercel/RustBuffer$ByValue;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<KotlinType:",
            "Ljava/lang/Object;",
            "FfiType:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/superwall/supercel/FfiConverter<",
            "TKotlinType;TFfiType;>;TKotlinType;)",
            "Lcom/superwall/supercel/RustBuffer$ByValue;"
        }
    .end annotation

    .line 174
    sget-object v0, Lcom/superwall/supercel/RustBuffer;->Companion:Lcom/superwall/supercel/RustBuffer$Companion;

    invoke-interface {p0, p1}, Lcom/superwall/supercel/FfiConverter;->allocationSize-I7RO_PI(Ljava/lang/Object;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/superwall/supercel/RustBuffer$Companion;->alloc-VKZWuLQ$supercel_release(J)Lcom/superwall/supercel/RustBuffer$ByValue;

    move-result-object v0

    .line 176
    :try_start_0
    iget-object v1, v0, Lcom/superwall/supercel/RustBuffer$ByValue;->data:Lcom/sun/jna/Pointer;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-wide v2, v0, Lcom/superwall/supercel/RustBuffer$ByValue;->capacity:J

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v2, v3}, Lcom/sun/jna/Pointer;->getByteBuffer(JJ)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 177
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 179
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, p1, v1}, Lcom/superwall/supercel/FfiConverter;->write(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V

    .line 180
    const-string p0, "len"

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/superwall/supercel/RustBuffer$ByValue;->writeField(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    .line 183
    sget-object p1, Lcom/superwall/supercel/RustBuffer;->Companion:Lcom/superwall/supercel/RustBuffer$Companion;

    invoke-virtual {p1, v0}, Lcom/superwall/supercel/RustBuffer$Companion;->free$supercel_release(Lcom/superwall/supercel/RustBuffer$ByValue;)V

    .line 184
    throw p0
.end method

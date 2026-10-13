.class public abstract Lcom/superwall/supercel/FfiConverterCallbackInterface;
.super Ljava/lang/Object;
.source "CEL.kt"

# interfaces
.implements Lcom/superwall/supercel/FfiConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CallbackInterface:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/superwall/supercel/FfiConverter<",
        "TCallbackInterface;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u00020\u00040\u0003B\u0005\u00a2\u0006\u0002\u0010\u0005J \u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00028\u0000H\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0015\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0004H\u0000\u00a2\u0006\u0002\u0008\u0012J\u0015\u0010\u0013\u001a\u00028\u00002\u0006\u0010\u000c\u001a\u00020\u0004H\u0016\u00a2\u0006\u0002\u0010\u0014J\u0015\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0016J\u0015\u0010\u0017\u001a\u00028\u00002\u0006\u0010\u0018\u001a\u00020\u0019H\u0016\u00a2\u0006\u0002\u0010\u001aJ\u001d\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u000c\u001a\u00028\u00002\u0006\u0010\u0018\u001a\u00020\u0019H\u0016\u00a2\u0006\u0002\u0010\u001cR\u001a\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u0082\u0002\u000f\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/superwall/supercel/FfiConverterCallbackInterface;",
        "CallbackInterface",
        "",
        "Lcom/superwall/supercel/FfiConverter;",
        "",
        "()V",
        "handleMap",
        "Lcom/superwall/supercel/UniffiHandleMap;",
        "getHandleMap$supercel_release",
        "()Lcom/superwall/supercel/UniffiHandleMap;",
        "allocationSize",
        "Lkotlin/ULong;",
        "value",
        "allocationSize-I7RO_PI",
        "(Ljava/lang/Object;)J",
        "drop",
        "",
        "handle",
        "drop$supercel_release",
        "lift",
        "(J)Ljava/lang/Object;",
        "lower",
        "(Ljava/lang/Object;)Ljava/lang/Long;",
        "read",
        "buf",
        "Ljava/nio/ByteBuffer;",
        "(Ljava/nio/ByteBuffer;)Ljava/lang/Object;",
        "write",
        "(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V",
        "supercel_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final handleMap:Lcom/superwall/supercel/UniffiHandleMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/superwall/supercel/UniffiHandleMap<",
            "TCallbackInterface;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1117
    new-instance v0, Lcom/superwall/supercel/UniffiHandleMap;

    invoke-direct {v0}, Lcom/superwall/supercel/UniffiHandleMap;-><init>()V

    iput-object v0, p0, Lcom/superwall/supercel/FfiConverterCallbackInterface;->handleMap:Lcom/superwall/supercel/UniffiHandleMap;

    return-void
.end method


# virtual methods
.method public allocationSize-I7RO_PI(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCallbackInterface;)J"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x8

    return-wide v0
.end method

.method public final drop$supercel_release(J)V
    .locals 1

    .line 1120
    iget-object v0, p0, Lcom/superwall/supercel/FfiConverterCallbackInterface;->handleMap:Lcom/superwall/supercel/UniffiHandleMap;

    invoke-virtual {v0, p1, p2}, Lcom/superwall/supercel/UniffiHandleMap;->remove(J)Ljava/lang/Object;

    return-void
.end method

.method public final getHandleMap$supercel_release()Lcom/superwall/supercel/UniffiHandleMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/superwall/supercel/UniffiHandleMap<",
            "TCallbackInterface;>;"
        }
    .end annotation

    .line 1117
    iget-object v0, p0, Lcom/superwall/supercel/FfiConverterCallbackInterface;->handleMap:Lcom/superwall/supercel/UniffiHandleMap;

    return-object v0
.end method

.method public lift(J)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TCallbackInterface;"
        }
    .end annotation

    .line 1124
    iget-object v0, p0, Lcom/superwall/supercel/FfiConverterCallbackInterface;->handleMap:Lcom/superwall/supercel/UniffiHandleMap;

    invoke-virtual {v0, p1, p2}, Lcom/superwall/supercel/UniffiHandleMap;->get(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic lift(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1116
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/superwall/supercel/FfiConverterCallbackInterface;->lift(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public liftFromRustBuffer(Lcom/superwall/supercel/RustBuffer$ByValue;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/supercel/RustBuffer$ByValue;",
            ")TCallbackInterface;"
        }
    .end annotation

    .line 1116
    invoke-static {p0, p1}, Lcom/superwall/supercel/FfiConverter$DefaultImpls;->liftFromRustBuffer(Lcom/superwall/supercel/FfiConverter;Lcom/superwall/supercel/RustBuffer$ByValue;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCallbackInterface;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1129
    iget-object v0, p0, Lcom/superwall/supercel/FfiConverterCallbackInterface;->handleMap:Lcom/superwall/supercel/UniffiHandleMap;

    invoke-virtual {v0, p1}, Lcom/superwall/supercel/UniffiHandleMap;->insert(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1116
    invoke-virtual {p0, p1}, Lcom/superwall/supercel/FfiConverterCallbackInterface;->lower(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public lowerIntoRustBuffer(Ljava/lang/Object;)Lcom/superwall/supercel/RustBuffer$ByValue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCallbackInterface;)",
            "Lcom/superwall/supercel/RustBuffer$ByValue;"
        }
    .end annotation

    .line 1116
    invoke-static {p0, p1}, Lcom/superwall/supercel/FfiConverter$DefaultImpls;->lowerIntoRustBuffer(Lcom/superwall/supercel/FfiConverter;Ljava/lang/Object;)Lcom/superwall/supercel/RustBuffer$ByValue;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")TCallbackInterface;"
        }
    .end annotation

    const-string v0, "buf"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1127
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/superwall/supercel/FfiConverterCallbackInterface;->lift(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public write(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCallbackInterface;",
            "Ljava/nio/ByteBuffer;",
            ")V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buf"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1134
    invoke-virtual {p0, p1}, Lcom/superwall/supercel/FfiConverterCallbackInterface;->lower(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    return-void
.end method

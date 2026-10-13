.class public interface abstract Lcom/superwall/supercel/FfiConverter;
.super Ljava/lang/Object;
.source "CEL.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/supercel/FfiConverter$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KotlinType:",
        "Ljava/lang/Object;",
        "FfiType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008f\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u00022\u00020\u0003J \u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00028\u0000H&\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0015\u0010\t\u001a\u00028\u00002\u0006\u0010\u0006\u001a\u00028\u0001H&\u00a2\u0006\u0002\u0010\nJ\u0015\u0010\u000b\u001a\u00028\u00002\u0006\u0010\u000c\u001a\u00020\rH\u0016\u00a2\u0006\u0002\u0010\u000eJ\u0015\u0010\u000f\u001a\u00028\u00012\u0006\u0010\u0006\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010\nJ\u0015\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0006\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0011J\u0015\u0010\u0012\u001a\u00028\u00002\u0006\u0010\u0013\u001a\u00020\u0014H&\u00a2\u0006\u0002\u0010\u0015J\u001d\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0006\u001a\u00028\u00002\u0006\u0010\u0013\u001a\u00020\u0014H&\u00a2\u0006\u0002\u0010\u0018\u0082\u0002\u000f\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/superwall/supercel/FfiConverter;",
        "KotlinType",
        "FfiType",
        "",
        "allocationSize",
        "Lkotlin/ULong;",
        "value",
        "allocationSize-I7RO_PI",
        "(Ljava/lang/Object;)J",
        "lift",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "liftFromRustBuffer",
        "rbuf",
        "Lcom/superwall/supercel/RustBuffer$ByValue;",
        "(Lcom/superwall/supercel/RustBuffer$ByValue;)Ljava/lang/Object;",
        "lower",
        "lowerIntoRustBuffer",
        "(Ljava/lang/Object;)Lcom/superwall/supercel/RustBuffer$ByValue;",
        "read",
        "buf",
        "Ljava/nio/ByteBuffer;",
        "(Ljava/nio/ByteBuffer;)Ljava/lang/Object;",
        "write",
        "",
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


# virtual methods
.method public abstract allocationSize-I7RO_PI(Ljava/lang/Object;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKotlinType;)J"
        }
    .end annotation
.end method

.method public abstract lift(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFfiType;)TKotlinType;"
        }
    .end annotation
.end method

.method public abstract liftFromRustBuffer(Lcom/superwall/supercel/RustBuffer$ByValue;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/supercel/RustBuffer$ByValue;",
            ")TKotlinType;"
        }
    .end annotation
.end method

.method public abstract lower(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKotlinType;)TFfiType;"
        }
    .end annotation
.end method

.method public abstract lowerIntoRustBuffer(Ljava/lang/Object;)Lcom/superwall/supercel/RustBuffer$ByValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKotlinType;)",
            "Lcom/superwall/supercel/RustBuffer$ByValue;"
        }
    .end annotation
.end method

.method public abstract read(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")TKotlinType;"
        }
    .end annotation
.end method

.method public abstract write(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKotlinType;",
            "Ljava/nio/ByteBuffer;",
            ")V"
        }
    .end annotation
.end method

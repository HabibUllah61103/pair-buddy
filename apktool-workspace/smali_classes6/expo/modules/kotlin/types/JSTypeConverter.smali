.class public interface abstract Lexpo/modules/kotlin/types/JSTypeConverter;
.super Ljava/lang/Object;
.source "JSTypeConverter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/kotlin/types/JSTypeConverter$AndroidUriConverter;,
        Lexpo/modules/kotlin/types/JSTypeConverter$AnyConverter;,
        Lexpo/modules/kotlin/types/JSTypeConverter$ArrayConverter;,
        Lexpo/modules/kotlin/types/JSTypeConverter$BooleanArrayConverter;,
        Lexpo/modules/kotlin/types/JSTypeConverter$BundleConverter;,
        Lexpo/modules/kotlin/types/JSTypeConverter$ByteArrayConverter;,
        Lexpo/modules/kotlin/types/JSTypeConverter$CollectionConverter;,
        Lexpo/modules/kotlin/types/JSTypeConverter$DoubleArrayConverter;,
        Lexpo/modules/kotlin/types/JSTypeConverter$DurationConverter;,
        Lexpo/modules/kotlin/types/JSTypeConverter$EnumConverter;,
        Lexpo/modules/kotlin/types/JSTypeConverter$FileConverter;,
        Lexpo/modules/kotlin/types/JSTypeConverter$FloatArrayConverter;,
        Lexpo/modules/kotlin/types/JSTypeConverter$FormattedRecordConverter;,
        Lexpo/modules/kotlin/types/JSTypeConverter$IntArrayConverter;,
        Lexpo/modules/kotlin/types/JSTypeConverter$LongConverter;,
        Lexpo/modules/kotlin/types/JSTypeConverter$MapConverter;,
        Lexpo/modules/kotlin/types/JSTypeConverter$PairConverter;,
        Lexpo/modules/kotlin/types/JSTypeConverter$PassThroughConverter;,
        Lexpo/modules/kotlin/types/JSTypeConverter$RawTypedArrayHolderConverter;,
        Lexpo/modules/kotlin/types/JSTypeConverter$RecordConverter;,
        Lexpo/modules/kotlin/types/JSTypeConverter$URIConverter;,
        Lexpo/modules/kotlin/types/JSTypeConverter$URLConverter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0019\u0008f\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002:\u0016\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001eJ\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002H&R\u0012\u0010\u0005\u001a\u00020\u0006X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u001f"
    }
    d2 = {
        "Lexpo/modules/kotlin/types/JSTypeConverter;",
        "T",
        "",
        "convertToJS",
        "value",
        "returnType",
        "Lexpo/modules/kotlin/jni/ReturnType;",
        "getReturnType",
        "()Lexpo/modules/kotlin/jni/ReturnType;",
        "PassThroughConverter",
        "BundleConverter",
        "ArrayConverter",
        "IntArrayConverter",
        "FloatArrayConverter",
        "DoubleArrayConverter",
        "BooleanArrayConverter",
        "ByteArrayConverter",
        "MapConverter",
        "EnumConverter",
        "RecordConverter",
        "URIConverter",
        "URLConverter",
        "AndroidUriConverter",
        "FileConverter",
        "PairConverter",
        "LongConverter",
        "DurationConverter",
        "RawTypedArrayHolderConverter",
        "CollectionConverter",
        "AnyConverter",
        "FormattedRecordConverter",
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


# virtual methods
.method public abstract convertToJS(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract getReturnType()Lexpo/modules/kotlin/jni/ReturnType;
.end method

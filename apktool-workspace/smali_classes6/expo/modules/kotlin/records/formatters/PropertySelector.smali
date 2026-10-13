.class public final Lexpo/modules/kotlin/records/formatters/PropertySelector;
.super Ljava/lang/Object;
.source "PropertySelector.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;,
        Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilderForRecord;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RecordType::",
        "Lexpo/modules/kotlin/records/Record;",
        "PropertyType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u0004\u0008\u0001\u0010\u00032\u00020\u0004:\u0002\u0016\u0017B6\u0012-\u0010\u0005\u001a)\u0012\u001f\u0012\u001d\u0012\u0006\u0008\u0000\u0012\u00028\u0000\u0012\u0002\u0008\u00030\u0007\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\n\u0012\u0004\u0012\u00020\u000b0\u0006\u00a2\u0006\u0004\u0008\u000c\u0010\rR;\u0010\u0005\u001a)\u0012\u001f\u0012\u001d\u0012\u0006\u0008\u0000\u0012\u00028\u0000\u0012\u0002\u0008\u00030\u0007\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\n\u0012\u0004\u0012\u00020\u000b0\u0006X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR2\u0010\u0010\u001a\u001a\u0012\u0004\u0012\u00028\u0000\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0011X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0018"
    }
    d2 = {
        "Lexpo/modules/kotlin/records/formatters/PropertySelector;",
        "RecordType",
        "Lexpo/modules/kotlin/records/Record;",
        "PropertyType",
        "",
        "selector",
        "Lkotlin/Function1;",
        "Lkotlin/reflect/KProperty1;",
        "Lkotlin/ParameterName;",
        "name",
        "property",
        "",
        "<init>",
        "(Lkotlin/jvm/functions/Function1;)V",
        "getSelector$expo_modules_core_release",
        "()Lkotlin/jvm/functions/Function1;",
        "action",
        "Lkotlin/Function2;",
        "getAction$expo_modules_core_release",
        "()Lkotlin/jvm/functions/Function2;",
        "setAction$expo_modules_core_release",
        "(Lkotlin/jvm/functions/Function2;)V",
        "ActionBuilder",
        "ActionBuilderForRecord",
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
.field private action:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-TRecordType;",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final selector:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/reflect/KProperty1<",
            "-TRecordType;*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/reflect/KProperty1<",
            "-TRecordType;*>;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "selector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lexpo/modules/kotlin/records/formatters/PropertySelector;->selector:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final getAction$expo_modules_core_release()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "TRecordType;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lexpo/modules/kotlin/records/formatters/PropertySelector;->action:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final getSelector$expo_modules_core_release()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/reflect/KProperty1<",
            "-TRecordType;*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lexpo/modules/kotlin/records/formatters/PropertySelector;->selector:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final setAction$expo_modules_core_release(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-TRecordType;",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 9
    iput-object p1, p0, Lexpo/modules/kotlin/records/formatters/PropertySelector;->action:Lkotlin/jvm/functions/Function2;

    return-void
.end method

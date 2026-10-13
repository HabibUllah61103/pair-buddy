.class public final Lexpo/modules/kotlin/records/formatters/FormattedRecord;
.super Ljava/lang/Object;
.source "FormattedRecord.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RecordType::",
        "Lexpo/modules/kotlin/records/Record;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0003B\u001d\u0012\u0006\u0010\u0004\u001a\u00028\u0000\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0010\u0010\u000e\u001a\u00028\u0000H\u00c0\u0003\u00a2\u0006\u0004\u0008\u000f\u0010\nJ\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006H\u00c0\u0003\u00a2\u0006\u0002\u0008\u0011J.\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00028\u00002\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0013J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0003H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001R\u0016\u0010\u0004\u001a\u00028\u0000X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u000b\u001a\u0004\u0008\t\u0010\nR\u001a\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u001b"
    }
    d2 = {
        "Lexpo/modules/kotlin/records/formatters/FormattedRecord;",
        "RecordType",
        "Lexpo/modules/kotlin/records/Record;",
        "",
        "record",
        "formatter",
        "Lexpo/modules/kotlin/records/formatters/Formatter;",
        "<init>",
        "(Lexpo/modules/kotlin/records/Record;Lexpo/modules/kotlin/records/formatters/Formatter;)V",
        "getRecord$expo_modules_core_release",
        "()Lexpo/modules/kotlin/records/Record;",
        "Lexpo/modules/kotlin/records/Record;",
        "getFormatter$expo_modules_core_release",
        "()Lexpo/modules/kotlin/records/formatters/Formatter;",
        "component1",
        "component1$expo_modules_core_release",
        "component2",
        "component2$expo_modules_core_release",
        "copy",
        "(Lexpo/modules/kotlin/records/Record;Lexpo/modules/kotlin/records/formatters/Formatter;)Lexpo/modules/kotlin/records/formatters/FormattedRecord;",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
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
.field private final formatter:Lexpo/modules/kotlin/records/formatters/Formatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lexpo/modules/kotlin/records/formatters/Formatter<",
            "TRecordType;>;"
        }
    .end annotation
.end field

.field private final record:Lexpo/modules/kotlin/records/Record;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRecordType;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lexpo/modules/kotlin/records/Record;Lexpo/modules/kotlin/records/formatters/Formatter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRecordType;",
            "Lexpo/modules/kotlin/records/formatters/Formatter<",
            "TRecordType;>;)V"
        }
    .end annotation

    const-string v0, "record"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formatter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lexpo/modules/kotlin/records/formatters/FormattedRecord;->record:Lexpo/modules/kotlin/records/Record;

    .line 7
    iput-object p2, p0, Lexpo/modules/kotlin/records/formatters/FormattedRecord;->formatter:Lexpo/modules/kotlin/records/formatters/Formatter;

    return-void
.end method

.method public static synthetic copy$default(Lexpo/modules/kotlin/records/formatters/FormattedRecord;Lexpo/modules/kotlin/records/Record;Lexpo/modules/kotlin/records/formatters/Formatter;ILjava/lang/Object;)Lexpo/modules/kotlin/records/formatters/FormattedRecord;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lexpo/modules/kotlin/records/formatters/FormattedRecord;->record:Lexpo/modules/kotlin/records/Record;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lexpo/modules/kotlin/records/formatters/FormattedRecord;->formatter:Lexpo/modules/kotlin/records/formatters/Formatter;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lexpo/modules/kotlin/records/formatters/FormattedRecord;->copy(Lexpo/modules/kotlin/records/Record;Lexpo/modules/kotlin/records/formatters/Formatter;)Lexpo/modules/kotlin/records/formatters/FormattedRecord;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1$expo_modules_core_release()Lexpo/modules/kotlin/records/Record;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRecordType;"
        }
    .end annotation

    iget-object v0, p0, Lexpo/modules/kotlin/records/formatters/FormattedRecord;->record:Lexpo/modules/kotlin/records/Record;

    return-object v0
.end method

.method public final component2$expo_modules_core_release()Lexpo/modules/kotlin/records/formatters/Formatter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lexpo/modules/kotlin/records/formatters/Formatter<",
            "TRecordType;>;"
        }
    .end annotation

    iget-object v0, p0, Lexpo/modules/kotlin/records/formatters/FormattedRecord;->formatter:Lexpo/modules/kotlin/records/formatters/Formatter;

    return-object v0
.end method

.method public final copy(Lexpo/modules/kotlin/records/Record;Lexpo/modules/kotlin/records/formatters/Formatter;)Lexpo/modules/kotlin/records/formatters/FormattedRecord;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRecordType;",
            "Lexpo/modules/kotlin/records/formatters/Formatter<",
            "TRecordType;>;)",
            "Lexpo/modules/kotlin/records/formatters/FormattedRecord<",
            "TRecordType;>;"
        }
    .end annotation

    const-string v0, "record"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formatter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lexpo/modules/kotlin/records/formatters/FormattedRecord;

    invoke-direct {v0, p1, p2}, Lexpo/modules/kotlin/records/formatters/FormattedRecord;-><init>(Lexpo/modules/kotlin/records/Record;Lexpo/modules/kotlin/records/formatters/Formatter;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/kotlin/records/formatters/FormattedRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lexpo/modules/kotlin/records/formatters/FormattedRecord;

    iget-object v1, p0, Lexpo/modules/kotlin/records/formatters/FormattedRecord;->record:Lexpo/modules/kotlin/records/Record;

    iget-object v3, p1, Lexpo/modules/kotlin/records/formatters/FormattedRecord;->record:Lexpo/modules/kotlin/records/Record;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lexpo/modules/kotlin/records/formatters/FormattedRecord;->formatter:Lexpo/modules/kotlin/records/formatters/Formatter;

    iget-object p1, p1, Lexpo/modules/kotlin/records/formatters/FormattedRecord;->formatter:Lexpo/modules/kotlin/records/formatters/Formatter;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getFormatter$expo_modules_core_release()Lexpo/modules/kotlin/records/formatters/Formatter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lexpo/modules/kotlin/records/formatters/Formatter<",
            "TRecordType;>;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lexpo/modules/kotlin/records/formatters/FormattedRecord;->formatter:Lexpo/modules/kotlin/records/formatters/Formatter;

    return-object v0
.end method

.method public final getRecord$expo_modules_core_release()Lexpo/modules/kotlin/records/Record;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRecordType;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lexpo/modules/kotlin/records/formatters/FormattedRecord;->record:Lexpo/modules/kotlin/records/Record;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lexpo/modules/kotlin/records/formatters/FormattedRecord;->record:Lexpo/modules/kotlin/records/Record;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lexpo/modules/kotlin/records/formatters/FormattedRecord;->formatter:Lexpo/modules/kotlin/records/formatters/Formatter;

    invoke-virtual {v1}, Lexpo/modules/kotlin/records/formatters/Formatter;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lexpo/modules/kotlin/records/formatters/FormattedRecord;->record:Lexpo/modules/kotlin/records/Record;

    iget-object v1, p0, Lexpo/modules/kotlin/records/formatters/FormattedRecord;->formatter:Lexpo/modules/kotlin/records/formatters/Formatter;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FormattedRecord(record="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", formatter="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

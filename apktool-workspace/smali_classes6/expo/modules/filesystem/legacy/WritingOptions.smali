.class public final Lexpo/modules/filesystem/legacy/WritingOptions;
.super Ljava/lang/Object;
.source "FileSystemRecords.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00052\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000c\u0010\t\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0019"
    }
    d2 = {
        "Lexpo/modules/filesystem/legacy/WritingOptions;",
        "Lexpo/modules/kotlin/records/Record;",
        "encoding",
        "Lexpo/modules/filesystem/legacy/EncodingType;",
        "append",
        "",
        "<init>",
        "(Lexpo/modules/filesystem/legacy/EncodingType;Z)V",
        "getEncoding$annotations",
        "()V",
        "getEncoding",
        "()Lexpo/modules/filesystem/legacy/EncodingType;",
        "getAppend$annotations",
        "getAppend",
        "()Z",
        "component1",
        "component2",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "expo-file-system_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final append:Z

.field private final encoding:Lexpo/modules/filesystem/legacy/EncodingType;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, v2}, Lexpo/modules/filesystem/legacy/WritingOptions;-><init>(Lexpo/modules/filesystem/legacy/EncodingType;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lexpo/modules/filesystem/legacy/EncodingType;Z)V
    .locals 1

    const-string v0, "encoding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lexpo/modules/filesystem/legacy/WritingOptions;->encoding:Lexpo/modules/filesystem/legacy/EncodingType;

    .line 67
    iput-boolean p2, p0, Lexpo/modules/filesystem/legacy/WritingOptions;->append:Z

    return-void
.end method

.method public synthetic constructor <init>(Lexpo/modules/filesystem/legacy/EncodingType;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 66
    sget-object p1, Lexpo/modules/filesystem/legacy/EncodingType;->UTF8:Lexpo/modules/filesystem/legacy/EncodingType;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 64
    :cond_1
    invoke-direct {p0, p1, p2}, Lexpo/modules/filesystem/legacy/WritingOptions;-><init>(Lexpo/modules/filesystem/legacy/EncodingType;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lexpo/modules/filesystem/legacy/WritingOptions;Lexpo/modules/filesystem/legacy/EncodingType;ZILjava/lang/Object;)Lexpo/modules/filesystem/legacy/WritingOptions;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lexpo/modules/filesystem/legacy/WritingOptions;->encoding:Lexpo/modules/filesystem/legacy/EncodingType;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Lexpo/modules/filesystem/legacy/WritingOptions;->append:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Lexpo/modules/filesystem/legacy/WritingOptions;->copy(Lexpo/modules/filesystem/legacy/EncodingType;Z)Lexpo/modules/filesystem/legacy/WritingOptions;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getAppend$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getEncoding$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final component1()Lexpo/modules/filesystem/legacy/EncodingType;
    .locals 1

    iget-object v0, p0, Lexpo/modules/filesystem/legacy/WritingOptions;->encoding:Lexpo/modules/filesystem/legacy/EncodingType;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lexpo/modules/filesystem/legacy/WritingOptions;->append:Z

    return v0
.end method

.method public final copy(Lexpo/modules/filesystem/legacy/EncodingType;Z)Lexpo/modules/filesystem/legacy/WritingOptions;
    .locals 1

    const-string v0, "encoding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lexpo/modules/filesystem/legacy/WritingOptions;

    invoke-direct {v0, p1, p2}, Lexpo/modules/filesystem/legacy/WritingOptions;-><init>(Lexpo/modules/filesystem/legacy/EncodingType;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/filesystem/legacy/WritingOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lexpo/modules/filesystem/legacy/WritingOptions;

    iget-object v1, p0, Lexpo/modules/filesystem/legacy/WritingOptions;->encoding:Lexpo/modules/filesystem/legacy/EncodingType;

    iget-object v3, p1, Lexpo/modules/filesystem/legacy/WritingOptions;->encoding:Lexpo/modules/filesystem/legacy/EncodingType;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lexpo/modules/filesystem/legacy/WritingOptions;->append:Z

    iget-boolean p1, p1, Lexpo/modules/filesystem/legacy/WritingOptions;->append:Z

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getAppend()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lexpo/modules/filesystem/legacy/WritingOptions;->append:Z

    return v0
.end method

.method public final getEncoding()Lexpo/modules/filesystem/legacy/EncodingType;
    .locals 1

    .line 65
    iget-object v0, p0, Lexpo/modules/filesystem/legacy/WritingOptions;->encoding:Lexpo/modules/filesystem/legacy/EncodingType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lexpo/modules/filesystem/legacy/WritingOptions;->encoding:Lexpo/modules/filesystem/legacy/EncodingType;

    invoke-virtual {v0}, Lexpo/modules/filesystem/legacy/EncodingType;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lexpo/modules/filesystem/legacy/WritingOptions;->append:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lexpo/modules/filesystem/legacy/WritingOptions;->encoding:Lexpo/modules/filesystem/legacy/EncodingType;

    iget-boolean v1, p0, Lexpo/modules/filesystem/legacy/WritingOptions;->append:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WritingOptions(encoding="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", append="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

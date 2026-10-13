.class public Lorg/apache/commons/io/comparator/LastModifiedFileComparator;
.super Ljava/lang/Object;
.source "LastModifiedFileComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# static fields
.field public static final LASTMODIFIED_COMPARATOR:Ljava/util/Comparator;

.field public static final LASTMODIFIED_REVERSE:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Lorg/apache/commons/io/comparator/LastModifiedFileComparator;

    invoke-direct {v0}, Lorg/apache/commons/io/comparator/LastModifiedFileComparator;-><init>()V

    sput-object v0, Lorg/apache/commons/io/comparator/LastModifiedFileComparator;->LASTMODIFIED_COMPARATOR:Ljava/util/Comparator;

    .line 54
    new-instance v1, Lorg/apache/commons/io/comparator/ReverseComparator;

    invoke-direct {v1, v0}, Lorg/apache/commons/io/comparator/ReverseComparator;-><init>(Ljava/util/Comparator;)V

    sput-object v1, Lorg/apache/commons/io/comparator/LastModifiedFileComparator;->LASTMODIFIED_REVERSE:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 68
    check-cast p1, Ljava/io/File;

    .line 69
    check-cast p2, Ljava/io/File;

    .line 70
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide p1

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x0

    cmp-long p1, v0, p1

    if-gez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

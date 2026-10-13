.class public Lorg/apache/commons/io/comparator/DefaultFileComparator;
.super Ljava/lang/Object;
.source "DefaultFileComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# static fields
.field public static final DEFAULT_COMPARATOR:Ljava/util/Comparator;

.field public static final DEFAULT_REVERSE:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Lorg/apache/commons/io/comparator/DefaultFileComparator;

    invoke-direct {v0}, Lorg/apache/commons/io/comparator/DefaultFileComparator;-><init>()V

    sput-object v0, Lorg/apache/commons/io/comparator/DefaultFileComparator;->DEFAULT_COMPARATOR:Ljava/util/Comparator;

    .line 53
    new-instance v1, Lorg/apache/commons/io/comparator/ReverseComparator;

    invoke-direct {v1, v0}, Lorg/apache/commons/io/comparator/ReverseComparator;-><init>(Ljava/util/Comparator;)V

    sput-object v1, Lorg/apache/commons/io/comparator/DefaultFileComparator;->DEFAULT_REVERSE:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 64
    check-cast p1, Ljava/io/File;

    .line 65
    check-cast p2, Ljava/io/File;

    .line 66
    invoke-virtual {p1, p2}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result p1

    return p1
.end method

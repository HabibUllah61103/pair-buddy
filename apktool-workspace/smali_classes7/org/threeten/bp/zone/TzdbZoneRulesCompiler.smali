.class final Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;
.super Ljava/lang/Object;
.source "TzdbZoneRulesCompiler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$LeapSecondRule;,
        Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBZone;,
        Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBRule;,
        Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;
    }
.end annotation


# static fields
.field private static final TIME_PARSER:Lorg/threeten/bp/format/DateTimeFormatter;


# instance fields
.field private final builtZones:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lorg/threeten/bp/zone/ZoneRules;",
            ">;"
        }
    .end annotation
.end field

.field private deduplicateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final leapSeconds:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Lorg/threeten/bp/LocalDate;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private final leapSecondsFile:Ljava/io/File;

.field private final links:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final rules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBRule;",
            ">;>;"
        }
    .end annotation
.end field

.field private final sourceFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final verbose:Z

.field private final version:Ljava/lang/String;

.field private final zones:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBZone;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 88
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->HOUR_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    .line 89
    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->optionalStart()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->MINUTE_OF_HOUR:Lorg/threeten/bp/temporal/ChronoField;

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->optionalStart()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->SECOND_OF_MINUTE:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v0, v1, v3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter()Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->TIME_PARSER:Lorg/threeten/bp/format/DateTimeFormatter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/io/File;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "Z)V"
        }
    .end annotation

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->rules:Ljava/util/Map;

    .line 440
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->zones:Ljava/util/Map;

    .line 442
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->links:Ljava/util/Map;

    .line 444
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->builtZones:Ljava/util/SortedMap;

    .line 446
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->deduplicateMap:Ljava/util/Map;

    .line 448
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->leapSeconds:Ljava/util/SortedMap;

    .line 467
    iput-object p1, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->version:Ljava/lang/String;

    .line 468
    iput-object p2, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->sourceFiles:Ljava/util/List;

    .line 469
    iput-object p3, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->leapSecondsFile:Ljava/io/File;

    .line 470
    iput-boolean p4, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->verbose:Z

    return-void
.end method

.method private buildZoneRules()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 902
    iget-object v0, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->zones:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 903
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Building zone "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->printVerbose(Ljava/lang/String;)V

    .line 904
    invoke-virtual {p0, v1}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->deduplicate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 905
    iget-object v2, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->zones:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 906
    new-instance v3, Lorg/threeten/bp/zone/ZoneRulesBuilder;

    invoke-direct {v3}, Lorg/threeten/bp/zone/ZoneRulesBuilder;-><init>()V

    .line 907
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBZone;

    .line 908
    iget-object v5, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->rules:Ljava/util/Map;

    invoke-virtual {v4, v3, v5}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBZone;->addToBuilder(Lorg/threeten/bp/zone/ZoneRulesBuilder;Ljava/util/Map;)Lorg/threeten/bp/zone/ZoneRulesBuilder;

    move-result-object v3

    goto :goto_1

    .line 910
    :cond_0
    iget-object v2, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->deduplicateMap:Ljava/util/Map;

    invoke-virtual {v3, v1, v2}, Lorg/threeten/bp/zone/ZoneRulesBuilder;->toRules(Ljava/lang/String;Ljava/util/Map;)Lorg/threeten/bp/zone/ZoneRules;

    move-result-object v2

    .line 911
    iget-object v3, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->builtZones:Ljava/util/SortedMap;

    invoke-virtual {p0, v2}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->deduplicate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 915
    :cond_1
    iget-object v0, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->links:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 916
    invoke-virtual {p0, v1}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->deduplicate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 917
    iget-object v2, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->links:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 918
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Linking alias "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->printVerbose(Ljava/lang/String;)V

    .line 919
    iget-object v3, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->builtZones:Ljava/util/SortedMap;

    invoke-interface {v3, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/threeten/bp/zone/ZoneRules;

    if-nez v3, :cond_3

    .line 921
    iget-object v3, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->links:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 922
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Relinking alias "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->printVerbose(Ljava/lang/String;)V

    .line 923
    iget-object v3, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->builtZones:Ljava/util/SortedMap;

    invoke-interface {v3, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/threeten/bp/zone/ZoneRules;

    if-eqz v3, :cond_2

    goto :goto_3

    .line 925
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Alias \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' links to invalid zone \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' for \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 928
    :cond_3
    :goto_3
    iget-object v2, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->builtZones:Ljava/util/SortedMap;

    invoke-interface {v2, v1, v3}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 932
    :cond_4
    iget-object v0, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->builtZones:Ljava/util/SortedMap;

    const-string v1, "UTC"

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    iget-object v0, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->builtZones:Ljava/util/SortedMap;

    const-string v1, "GMT"

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    iget-object v0, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->builtZones:Ljava/util/SortedMap;

    const-string v1, "GMT0"

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    iget-object v0, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->builtZones:Ljava/util/SortedMap;

    const-string v1, "GMT+0"

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    iget-object v0, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->builtZones:Ljava/util/SortedMap;

    const-string v1, "GMT-0"

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private getMostRecentLeapSecond()Lorg/threeten/bp/LocalDate;
    .locals 1

    .line 512
    iget-object v0, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->leapSeconds:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->leapSeconds:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/LocalDate;

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 11

    .line 101
    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 102
    invoke-static {}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->outputHelp()V

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    move-object v3, v0

    move-object v4, v3

    move v5, v2

    move v6, v5

    move v7, v6

    .line 115
    :goto_0
    array-length v8, p0

    const/4 v9, 0x1

    if-ge v5, v8, :cond_8

    .line 116
    aget-object v8, p0, v5

    .line 117
    const-string v10, "-"

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    goto/16 :goto_2

    .line 120
    :cond_1
    const-string v10, "-srcdir"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    if-nez v0, :cond_7

    add-int/lit8 v5, v5, 0x1

    .line 121
    array-length v0, p0

    if-ge v5, v0, :cond_7

    .line 122
    new-instance v0, Ljava/io/File;

    aget-object v8, p0, v5

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 125
    :cond_2
    const-string v10, "-dstdir"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    if-nez v3, :cond_7

    add-int/lit8 v5, v5, 0x1

    .line 126
    array-length v3, p0

    if-ge v5, v3, :cond_7

    .line 127
    new-instance v3, Ljava/io/File;

    aget-object v8, p0, v5

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 130
    :cond_3
    const-string v10, "-version"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    if-nez v4, :cond_7

    add-int/lit8 v5, v5, 0x1

    .line 131
    array-length v4, p0

    if-ge v5, v4, :cond_7

    .line 132
    aget-object v4, p0, v5

    goto :goto_1

    .line 135
    :cond_4
    const-string v10, "-unpacked"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    if-nez v6, :cond_7

    move v6, v9

    goto :goto_1

    .line 140
    :cond_5
    const-string v10, "-verbose"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    if-nez v7, :cond_7

    move v7, v9

    :goto_1
    add-int/2addr v5, v9

    goto :goto_0

    .line 145
    :cond_6
    const-string p0, "-help"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    .line 146
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unrecognised option: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 148
    :cond_7
    invoke-static {}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->outputHelp()V

    return-void

    :cond_8
    :goto_2
    if-nez v0, :cond_9

    .line 154
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Source directory must be specified using -srcdir: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 157
    :cond_9
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_a

    .line 158
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Source does not exist or is not a directory: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_a
    if-eqz v3, :cond_b

    goto :goto_3

    :cond_b
    move-object v3, v0

    .line 164
    :goto_3
    array-length v8, p0

    invoke-static {p0, v5, v8}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 165
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 166
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Source filenames not specified, using default set"

    invoke-virtual {p0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 167
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "(africa antarctica asia australasia backward etcetera europe northamerica southamerica)"

    invoke-virtual {p0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 p0, 0x9

    .line 168
    new-array p0, p0, [Ljava/lang/String;

    const-string v5, "africa"

    aput-object v5, p0, v2

    const-string v5, "antarctica"

    aput-object v5, p0, v9

    const-string v5, "asia"

    aput-object v5, p0, v1

    const/4 v1, 0x3

    const-string v5, "australasia"

    aput-object v5, p0, v1

    const/4 v1, 0x4

    const-string v5, "backward"

    aput-object v5, p0, v1

    const/4 v1, 0x5

    const-string v5, "etcetera"

    aput-object v5, p0, v1

    const/4 v1, 0x6

    const-string v5, "europe"

    aput-object v5, p0, v1

    const/4 v1, 0x7

    const-string v5, "northamerica"

    aput-object v5, p0, v1

    const/16 v1, 0x8

    const-string v5, "southamerica"

    aput-object v5, p0, v1

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 173
    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v4, :cond_e

    .line 175
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_d

    .line 177
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Version does not represent a valid source directory : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 180
    :cond_d
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 182
    :cond_e
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 183
    array-length v5, v4

    :goto_4
    if-ge v2, v5, :cond_10

    aget-object v8, v4, v2

    .line 184
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "[12][0-9][0-9][0-9][A-Za-z0-9._-]+"

    invoke-virtual {v9, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 185
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 189
    :cond_10
    :goto_5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 190
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Source directory contains no valid source folders: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 195
    :cond_11
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_12

    .line 196
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Destination directory could not be created: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 199
    :cond_12
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_13

    .line 200
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Destination is not a directory: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 203
    :cond_13
    invoke-static {v1, p0, v3, v6, v7}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->process(Ljava/util/List;Ljava/util/List;Ljava/io/File;ZZ)V

    return-void
.end method

.method private matches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 833
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-gt p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method private static outputFile(Ljava/io/File;Ljava/lang/String;Ljava/util/SortedMap;Ljava/util/SortedMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lorg/threeten/bp/zone/ZoneRules;",
            ">;",
            "Ljava/util/SortedMap<",
            "Lorg/threeten/bp/LocalDate;",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 337
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 338
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    new-instance p1, Ljava/util/TreeSet;

    invoke-interface {p2}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 340
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {p2}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 341
    invoke-static {p0, v0, p1, v1, p3}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->outputFile(Ljava/io/File;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/SortedMap;)V

    return-void
.end method

.method private static outputFile(Ljava/io/File;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/SortedMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lorg/threeten/bp/zone/ZoneRules;",
            ">;>;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Lorg/threeten/bp/zone/ZoneRules;",
            ">;",
            "Ljava/util/SortedMap<",
            "Lorg/threeten/bp/LocalDate;",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    const-string p4, "Failed: "

    const/4 v0, 0x0

    .line 351
    :try_start_0
    new-instance v1, Ljava/util/jar/JarOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 352
    :try_start_1
    invoke-static {v1, p1, p2, p3}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->outputTzdbEntry(Ljava/util/jar/JarOutputStream;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 360
    :try_start_2
    invoke-virtual {v1}, Ljava/util/jar/JarOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 354
    :goto_0
    :try_start_3
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x1

    .line 356
    invoke-static {p0}, Ljava/lang/System;->exit(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_0

    .line 360
    :try_start_4
    invoke-virtual {v0}, Ljava/util/jar/JarOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_0
    return-void

    :goto_1
    if-eqz v0, :cond_1

    :try_start_5
    invoke-virtual {v0}, Ljava/util/jar/JarOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 365
    :catch_3
    :cond_1
    throw p0
.end method

.method private static outputFilesDat(Ljava/io/File;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/SortedMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lorg/threeten/bp/zone/ZoneRules;",
            ">;>;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Lorg/threeten/bp/zone/ZoneRules;",
            ">;",
            "Ljava/util/SortedMap<",
            "Lorg/threeten/bp/LocalDate;",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 314
    new-instance p4, Ljava/io/File;

    const-string v0, "TZDB.dat"

    invoke-direct {p4, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 315
    invoke-virtual {p4}, Ljava/io/File;->delete()Z

    const/4 p0, 0x0

    .line 319
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 320
    :try_start_1
    invoke-static {v0, p1, p2, p3}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->outputTzdbDat(Ljava/io/OutputStream;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 325
    :cond_0
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 327
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Failed: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x1

    .line 329
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method private static outputHelp()V
    .locals 2

    .line 210
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Usage: TzdbZoneRulesCompiler <options> <tzdb source filenames>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 211
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "where options include:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 212
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "   -srcdir <directory>   Where to find source directories (required)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 213
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "   -dstdir <directory>   Where to output generated files (default srcdir)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 214
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "   -version <version>    Specify the version, such as 2009a (optional)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 215
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "   -unpacked             Generate dat files without jar files"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 216
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "   -help                 Print this usage message"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 217
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "   -verbose              Output verbose information during compilation"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 218
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " There must be one directory for each version in srcdir"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 219
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " Each directory must have the name of the version, such as 2009a"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 220
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " Each directory must contain the unpacked tzdb files, such as asia or europe"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 221
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " Directories must match the regex [12][0-9][0-9][0-9][A-Za-z0-9._-]+"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 222
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " There will be one jar file for each version and one combined jar in dstdir"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 223
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " If the version is specified, only that version is processed"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static outputTzdbDat(Ljava/io/OutputStream;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lorg/threeten/bp/zone/ZoneRules;",
            ">;>;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Lorg/threeten/bp/zone/ZoneRules;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 392
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p0, 0x1

    .line 395
    invoke-virtual {v0, p0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 397
    const-string p0, "TZDB"

    invoke-virtual {v0, p0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 399
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 400
    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 401
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p0, v3

    .line 402
    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 405
    :cond_0
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {p2, p0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 406
    array-length p2, p0

    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 407
    array-length p2, p0

    :goto_1
    if-ge v2, p2, :cond_1

    aget-object v1, p0, v2

    .line 408
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 411
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 412
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {v0, p3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 413
    new-instance p3, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x400

    invoke-direct {p3, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 414
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/threeten/bp/zone/ZoneRules;

    .line 415
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 416
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, p3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 417
    invoke-static {v2, v3}, Lorg/threeten/bp/zone/Ser;->write(Ljava/lang/Object;Ljava/io/DataOutput;)V

    .line 418
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 419
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 420
    array-length v3, v2

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 421
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_2

    .line 424
    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 425
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 426
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 427
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 428
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 429
    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 430
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_3

    .line 433
    :cond_4
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    return-void
.end method

.method private static outputTzdbEntry(Ljava/util/jar/JarOutputStream;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/jar/JarOutputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lorg/threeten/bp/zone/ZoneRules;",
            ">;>;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Lorg/threeten/bp/zone/ZoneRules;",
            ">;)V"
        }
    .end annotation

    .line 376
    :try_start_0
    new-instance v0, Ljava/util/zip/ZipEntry;

    const-string v1, "org/threeten/bp/TZDB.dat"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 377
    invoke-static {p0, p1, p2, p3}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->outputTzdbDat(Ljava/io/OutputStream;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 378
    invoke-virtual {p0}, Ljava/util/jar/JarOutputStream;->closeEntry()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 380
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Failed: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x1

    .line 382
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method private parseDayOfWeek(Ljava/lang/String;)Lorg/threeten/bp/DayOfWeek;
    .locals 5

    .line 823
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 824
    invoke-static {}, Lorg/threeten/bp/DayOfWeek;->values()[Lorg/threeten/bp/DayOfWeek;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 825
    invoke-virtual {v3}, Lorg/threeten/bp/DayOfWeek;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 829
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown day-of-week: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseFile(Ljava/io/File;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 640
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v1

    move-object v4, v3

    .line 642
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    const/16 v5, 0x23

    .line 643
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, 0x0

    if-ltz v5, :cond_0

    .line 645
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 647
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_2

    .line 650
    :cond_1
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v7, " \t"

    invoke-direct {v5, v4, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_2

    .line 651
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 652
    invoke-direct {p0, v5, v3}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->parseZoneLine(Ljava/util/StringTokenizer;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_9

    :goto_1
    move-object v3, v1

    goto/16 :goto_2

    .line 656
    :cond_2
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 657
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 658
    const-string v6, "Zone"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v7, ", line: "

    if-eqz v6, :cond_4

    .line 659
    :try_start_2
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    const/4 v6, 0x3

    if-lt v3, v6, :cond_3

    .line 663
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 664
    iget-object v6, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->zones:Ljava/util/Map;

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    invoke-direct {p0, v5, v3}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->parseZoneLine(Ljava/util/StringTokenizer;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_1

    .line 660
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Zone line in file: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->printVerbose(Ljava/lang/String;)V

    .line 661
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid Zone line"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 670
    :cond_4
    const-string v6, "Rule"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 671
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    const/16 v6, 0x9

    if-lt v3, v6, :cond_5

    .line 675
    invoke-direct {p0, v5}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->parseRuleLine(Ljava/util/StringTokenizer;)V

    goto :goto_1

    .line 672
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Rule line in file: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->printVerbose(Ljava/lang/String;)V

    .line 673
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid Rule line"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 677
    :cond_6
    const-string v6, "Link"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 678
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    const/4 v6, 0x2

    if-lt v3, v6, :cond_7

    .line 682
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 683
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 684
    iget-object v6, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->links:Ljava/util/Map;

    invoke-interface {v6, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 679
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Link line in file: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->printVerbose(Ljava/lang/String;)V

    .line 680
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid Link line"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 687
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unknown line"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_9
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 697
    :cond_a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    return-void

    :catch_0
    move-exception v1

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception v2

    move-object v4, v1

    move-object v1, v2

    move-object v2, v4

    .line 694
    :goto_3
    :try_start_3
    new-instance v3, Ljava/lang/Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed while processing file \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v5, "\' on line "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_b

    .line 697
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 699
    :cond_b
    throw p1
.end method

.method private parseFiles()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 531
    iget-object v0, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->sourceFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 532
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parsing file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->printVerbose(Ljava/lang/String;)V

    .line 533
    invoke-direct {p0, v1}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->parseFile(Ljava/io/File;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private parseLeapSecondRule(Ljava/lang/String;)Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$LeapSecondRule;
    .locals 4

    .line 589
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, " \t"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 591
    const-string v2, "Leap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 592
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_5

    .line 600
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 601
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->parseMonth(Ljava/lang/String;)Lorg/threeten/bp/Month;

    move-result-object v1

    .line 602
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 603
    invoke-static {p1, v1, v2}, Lorg/threeten/bp/LocalDate;->of(ILorg/threeten/bp/Month;I)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    .line 604
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 607
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 608
    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 609
    const-string v2, "23:59:60"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 610
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Leap seconds can only be inserted at 23:59:60 - Date:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 613
    :cond_1
    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 614
    const-string v2, "23:59:59"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, -0x1

    .line 622
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 623
    const-string v2, "S"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 626
    new-instance v0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$LeapSecondRule;

    invoke-direct {v0, p1, v1}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$LeapSecondRule;-><init>(Lorg/threeten/bp/LocalDate;B)V

    return-object v0

    .line 624
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Only stationary (\'S\') leap seconds are supported, not \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 615
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Leap seconds can only be removed at 23:59:59 - Date:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 619
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Invalid adjustment \'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' in leap second rule for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 593
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid leap second line in file: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->leapSecondsFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", line: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->printVerbose(Ljava/lang/String;)V

    .line 594
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid leap second line"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 597
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown line"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private parseLeapSecondsFile()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Parsing leap second file: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->leapSecondsFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->printVerbose(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 549
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    iget-object v4, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->leapSecondsFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 550
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const/16 v3, 0x23

    .line 551
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_0

    const/4 v4, 0x0

    .line 553
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 555
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 558
    :cond_1
    invoke-direct {p0, v1}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->parseLeapSecondRule(Ljava/lang/String;)Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$LeapSecondRule;

    move-result-object v3

    .line 559
    iget-object v4, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->leapSeconds:Ljava/util/SortedMap;

    iget-object v5, v3, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$LeapSecondRule;->leapDate:Lorg/threeten/bp/LocalDate;

    iget-byte v3, v3, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$LeapSecondRule;->secondAdjustment:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 566
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void

    :catch_1
    move-exception v3

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v3

    move-object v2, v1

    .line 562
    :goto_2
    :try_start_3
    new-instance v4, Ljava/lang/Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed while processing file \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->leapSecondsFile:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' on line "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " \'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_3

    .line 566
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 571
    :catch_3
    :cond_3
    throw v0
.end method

.method private parseMonth(Ljava/lang/String;)Lorg/threeten/bp/Month;
    .locals 5

    .line 813
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 814
    invoke-static {}, Lorg/threeten/bp/Month;->values()[Lorg/threeten/bp/Month;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 815
    invoke-virtual {v3}, Lorg/threeten/bp/Month;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 819
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown month: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseMonthDayTime(Ljava/util/StringTokenizer;Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;)V
    .locals 4

    .line 767
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->parseMonth(Ljava/lang/String;)Lorg/threeten/bp/Month;

    move-result-object v0

    iput-object v0, p2, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;->month:Lorg/threeten/bp/Month;

    .line 768
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 769
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 770
    const-string v1, "last"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    .line 771
    iput v1, p2, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;->dayOfMonth:I

    const/4 v1, 0x4

    .line 772
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->parseDayOfWeek(Ljava/lang/String;)Lorg/threeten/bp/DayOfWeek;

    move-result-object v0

    iput-object v0, p2, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;->dayOfWeek:Lorg/threeten/bp/DayOfWeek;

    .line 773
    iput-boolean v2, p2, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;->adjustForwards:Z

    goto :goto_1

    .line 775
    :cond_0
    const-string v1, ">="

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 777
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->parseDayOfWeek(Ljava/lang/String;)Lorg/threeten/bp/DayOfWeek;

    move-result-object v2

    iput-object v2, p2, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;->dayOfWeek:Lorg/threeten/bp/DayOfWeek;

    add-int/lit8 v1, v1, 0x2

    .line 778
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 780
    :cond_1
    const-string v1, "<="

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    .line 782
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->parseDayOfWeek(Ljava/lang/String;)Lorg/threeten/bp/DayOfWeek;

    move-result-object v3

    iput-object v3, p2, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;->dayOfWeek:Lorg/threeten/bp/DayOfWeek;

    .line 783
    iput-boolean v2, p2, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;->adjustForwards:Z

    add-int/lit8 v1, v1, 0x2

    .line 784
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 787
    :cond_2
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;->dayOfMonth:I

    .line 789
    :goto_1
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 790
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    .line 791
    invoke-direct {p0, p1}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->parseSecs(Ljava/lang/String;)I

    move-result v0

    const v1, 0x15180

    .line 792
    invoke-static {v0, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->floorMod(II)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Lorg/threeten/bp/LocalTime;->ofSecondOfDay(J)Lorg/threeten/bp/LocalTime;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->deduplicate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/threeten/bp/LocalTime;

    .line 793
    iput-object v2, p2, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;->time:Lorg/threeten/bp/LocalTime;

    .line 794
    invoke-static {v0, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->floorDiv(II)I

    move-result v0

    iput v0, p2, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;->adjustDays:I

    .line 795
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-direct {p0, p1}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->parseTimeDefinition(C)Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    move-result-object p1

    iput-object p1, p2, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;->timeDefinition:Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    :cond_3
    return-void
.end method

.method private parseOffset(Ljava/lang/String;)Lorg/threeten/bp/ZoneOffset;
    .locals 0

    .line 864
    invoke-direct {p0, p1}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->parseSecs(Ljava/lang/String;)I

    move-result p1

    .line 865
    invoke-static {p1}, Lorg/threeten/bp/ZoneOffset;->ofTotalSeconds(I)Lorg/threeten/bp/ZoneOffset;

    move-result-object p1

    return-object p1
.end method

.method private parseOptional(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 837
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method private parsePeriod(Ljava/lang/String;)I
    .locals 0

    .line 869
    invoke-direct {p0, p1}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->parseSecs(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private parseRuleLine(Ljava/util/StringTokenizer;)V
    .locals 4

    .line 708
    new-instance v0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBRule;

    invoke-direct {v0, p0}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBRule;-><init>(Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;)V

    .line 709
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 710
    iget-object v2, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->rules:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 711
    iget-object v2, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->rules:Ljava/util/Map;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    :cond_0
    iget-object v2, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->rules:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 714
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->parseYear(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBRule;->startYear:I

    .line 715
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBRule;->startYear:I

    invoke-direct {p0, v1, v2}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->parseYear(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBRule;->endYear:I

    .line 716
    iget v1, v0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBRule;->startYear:I

    iget v2, v0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBRule;->endYear:I

    if-gt v1, v2, :cond_1

    .line 719
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->parseOptional(Ljava/lang/String;)Ljava/lang/String;

    .line 720
    invoke-direct {p0, p1, v0}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->parseMonthDayTime(Ljava/util/StringTokenizer;Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;)V

    .line 721
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->parsePeriod(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBRule;->savingsAmount:I

    .line 722
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->parseOptional(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBRule;->text:Ljava/lang/String;

    return-void

    .line 717
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Year order invalid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBRule;->startYear:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBRule;->endYear:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private parseSecs(Ljava/lang/String;)I
    .locals 11

    .line 841
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 845
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 848
    new-instance v1, Ljava/text/ParsePosition;

    invoke-direct {v1, v0}, Ljava/text/ParsePosition;-><init>(I)V

    .line 849
    sget-object v2, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->TIME_PARSER:Lorg/threeten/bp/format/DateTimeFormatter;

    invoke-virtual {v2, p1, v1}, Lorg/threeten/bp/format/DateTimeFormatter;->parseUnresolved(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lorg/threeten/bp/temporal/TemporalAccessor;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 850
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v1

    if-gez v1, :cond_6

    .line 853
    sget-object p1, Lorg/threeten/bp/temporal/ChronoField;->HOUR_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v2, p1}, Lorg/threeten/bp/temporal/TemporalAccessor;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v3

    .line 854
    sget-object p1, Lorg/threeten/bp/temporal/ChronoField;->MINUTE_OF_HOUR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v2, p1}, Lorg/threeten/bp/temporal/TemporalAccessor;->isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    sget-object p1, Lorg/threeten/bp/temporal/ChronoField;->MINUTE_OF_HOUR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v2, p1}, Lorg/threeten/bp/temporal/TemporalAccessor;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    .line 855
    :goto_0
    sget-object v5, Lorg/threeten/bp/temporal/ChronoField;->SECOND_OF_MINUTE:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v2, v5}, Lorg/threeten/bp/temporal/TemporalAccessor;->isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->SECOND_OF_MINUTE:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {v2, v1}, Lorg/threeten/bp/temporal/TemporalAccessor;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_2
    const-wide/16 v5, 0xe10

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x0

    if-eqz p1, :cond_3

    .line 856
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_1

    :cond_3
    move-wide v7, v5

    :goto_1
    const-wide/16 v9, 0x3c

    mul-long/2addr v7, v9

    add-long/2addr v3, v7

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :cond_4
    add-long/2addr v3, v5

    long-to-int p1, v3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    neg-int p1, p1

    :cond_5
    return p1

    .line 851
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseTimeDefinition(C)Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;
    .locals 1

    const/16 v0, 0x47

    if-eq p1, v0, :cond_1

    const/16 v0, 0x53

    if-eq p1, v0, :cond_0

    const/16 v0, 0x55

    if-eq p1, v0, :cond_1

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x67

    if-eq p1, v0, :cond_1

    const/16 v0, 0x73

    if-eq p1, v0, :cond_0

    const/16 v0, 0x75

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7a

    if-eq p1, v0, :cond_1

    .line 890
    sget-object p1, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;->WALL:Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    return-object p1

    .line 877
    :cond_0
    sget-object p1, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;->STANDARD:Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    return-object p1

    .line 885
    :cond_1
    sget-object p1, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;->UTC:Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    return-object p1
.end method

.method private parseYear(Ljava/lang/String;I)I
    .locals 1

    .line 801
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 802
    const-string v0, "minimum"

    invoke-direct {p0, p1, v0}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, -0x3b9ac9ff

    return p1

    .line 804
    :cond_0
    const-string v0, "maximum"

    invoke-direct {p0, p1, v0}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0x3b9ac9ff

    return p1

    .line 806
    :cond_1
    const-string v0, "only"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return p2

    .line 809
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private parseZoneLine(Ljava/util/StringTokenizer;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/StringTokenizer;",
            "Ljava/util/List<",
            "Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBZone;",
            ">;)Z"
        }
    .end annotation

    .line 732
    new-instance v0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBZone;

    invoke-direct {v0, p0}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBZone;-><init>(Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;)V

    .line 733
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 734
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->parseOffset(Ljava/lang/String;)Lorg/threeten/bp/ZoneOffset;

    move-result-object p2

    iput-object p2, v0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBZone;->standardOffset:Lorg/threeten/bp/ZoneOffset;

    .line 735
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->parseOptional(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p2, :cond_0

    .line 737
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, v0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBZone;->fixedSavingsSecs:Ljava/lang/Integer;

    .line 738
    iput-object v2, v0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBZone;->savingsRule:Ljava/lang/String;

    goto :goto_0

    .line 741
    :cond_0
    :try_start_0
    invoke-direct {p0, p2}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->parsePeriod(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBZone;->fixedSavingsSecs:Ljava/lang/Integer;

    .line 742
    iput-object v2, v0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBZone;->savingsRule:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 744
    :catch_0
    iput-object v2, v0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBZone;->fixedSavingsSecs:Ljava/lang/Integer;

    .line 745
    iput-object p2, v0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBZone;->savingsRule:Ljava/lang/String;

    .line 748
    :goto_0
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBZone;->text:Ljava/lang/String;

    .line 749
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 750
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Lorg/threeten/bp/Year;->of(I)Lorg/threeten/bp/Year;

    move-result-object p2

    iput-object p2, v0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBZone;->year:Lorg/threeten/bp/Year;

    .line 751
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 752
    invoke-direct {p0, p1, v0}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->parseMonthDayTime(Ljava/util/StringTokenizer;Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;)V

    :cond_1
    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private printVerbose(Ljava/lang/String;)V
    .locals 1

    .line 962
    iget-boolean v0, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->verbose:Z

    if-eqz v0, :cond_0

    .line 963
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static process(Ljava/util/List;Ljava/util/List;Ljava/io/File;ZZ)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            "ZZ)V"
        }
    .end annotation

    move-object/from16 v1, p2

    move/from16 v2, p4

    .line 231
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 232
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 233
    new-instance v5, Ljava/util/TreeSet;

    invoke-direct {v5}, Ljava/util/TreeSet;-><init>()V

    .line 234
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 237
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v9, 0x0

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 239
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 240
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 241
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v0, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 242
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 243
    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 246
    :cond_2
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_0

    .line 249
    :cond_3
    new-instance v11, Ljava/io/File;

    const-string v12, "leapseconds"

    invoke-direct {v11, v0, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 250
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_4

    .line 251
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Version "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " does not include leap seconds information."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v11, 0x0

    .line 256
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 257
    new-instance v12, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;

    invoke-direct {v12, v0, v10, v11, v2}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/io/File;Z)V

    .line 258
    invoke-virtual {v12, v3}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->setDeduplicateMap(Ljava/util/Map;)V

    .line 261
    :try_start_0
    invoke-virtual {v12}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->compile()V

    .line 262
    invoke-virtual {v12}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->getZones()Ljava/util/SortedMap;

    move-result-object v10

    .line 263
    invoke-virtual {v12}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->getLeapSeconds()Ljava/util/SortedMap;

    move-result-object v11

    if-nez p3, :cond_6

    .line 267
    new-instance v13, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "threeten-TZDB-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".jar"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v1, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz v2, :cond_5

    .line 269
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Outputting file: "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 271
    :cond_5
    invoke-static {v13, v0, v10, v11}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->outputFile(Ljava/io/File;Ljava/lang/String;Ljava/util/SortedMap;Ljava/util/SortedMap;)V

    .line 275
    :cond_6
    invoke-interface {v4, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    invoke-interface {v10}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 277
    invoke-interface {v10}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 280
    invoke-direct {v12}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->getMostRecentLeapSecond()Lorg/threeten/bp/LocalDate;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz v9, :cond_7

    .line 282
    invoke-direct {v12}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->getMostRecentLeapSecond()Lorg/threeten/bp/LocalDate;

    move-result-object v0

    invoke-interface {v9}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/threeten/bp/chrono/ChronoLocalDate;

    invoke-virtual {v0, v8}, Lorg/threeten/bp/LocalDate;->compareTo(Lorg/threeten/bp/chrono/ChronoLocalDate;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v0, :cond_0

    :cond_7
    move-object v9, v11

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 288
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Failed: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x1

    .line 290
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_0

    :cond_8
    if-eqz p3, :cond_a

    if-eqz v2, :cond_9

    .line 297
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Outputting combined files: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 299
    :cond_9
    invoke-static {v1, v4, v5, v6, v9}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->outputFilesDat(Ljava/io/File;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/SortedMap;)V

    goto :goto_2

    .line 301
    :cond_a
    new-instance v0, Ljava/io/File;

    const-string v3, "threeten-TZDB-all.jar"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz v2, :cond_b

    .line 303
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Outputting combined file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 305
    :cond_b
    invoke-static {v0, v4, v5, v6, v9}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->outputFile(Ljava/io/File;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/SortedMap;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public compile()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Compiling TZDB version "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->printVerbose(Ljava/lang/String;)V

    .line 482
    invoke-direct {p0}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->parseFiles()V

    .line 483
    invoke-direct {p0}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->parseLeapSecondsFile()V

    .line 484
    invoke-direct {p0}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->buildZoneRules()V

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Compiled TZDB version "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->printVerbose(Ljava/lang/String;)V

    return-void
.end method

.method deduplicate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 949
    iget-object v0, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->deduplicateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 950
    iget-object v0, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->deduplicateMap:Ljava/util/Map;

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->deduplicateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getLeapSeconds()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Lorg/threeten/bp/LocalDate;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 503
    iget-object v0, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->leapSeconds:Ljava/util/SortedMap;

    return-object v0
.end method

.method public getZones()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lorg/threeten/bp/zone/ZoneRules;",
            ">;"
        }
    .end annotation

    .line 494
    iget-object v0, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->builtZones:Ljava/util/SortedMap;

    return-object v0
.end method

.method setDeduplicateMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 521
    iput-object p1, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;->deduplicateMap:Ljava/util/Map;

    return-void
.end method

.class abstract Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;
.super Ljava/lang/Object;
.source "TzdbZoneRulesCompiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "TZDBMonthDayTime"
.end annotation


# instance fields
.field adjustDays:I

.field adjustForwards:Z

.field dayOfMonth:I

.field dayOfWeek:Lorg/threeten/bp/DayOfWeek;

.field month:Lorg/threeten/bp/Month;

.field final synthetic this$0:Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;

.field time:Lorg/threeten/bp/LocalTime;

.field timeDefinition:Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;


# direct methods
.method constructor <init>(Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;)V
    .locals 0

    .line 971
    iput-object p1, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;->this$0:Lorg/threeten/bp/zone/TzdbZoneRulesCompiler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 973
    sget-object p1, Lorg/threeten/bp/Month;->JANUARY:Lorg/threeten/bp/Month;

    iput-object p1, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;->month:Lorg/threeten/bp/Month;

    const/4 p1, 0x1

    .line 975
    iput p1, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;->dayOfMonth:I

    .line 977
    iput-boolean p1, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;->adjustForwards:Z

    .line 981
    sget-object p1, Lorg/threeten/bp/LocalTime;->MIDNIGHT:Lorg/threeten/bp/LocalTime;

    iput-object p1, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;->time:Lorg/threeten/bp/LocalTime;

    .line 985
    sget-object p1, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;->WALL:Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    iput-object p1, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;->timeDefinition:Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    return-void
.end method


# virtual methods
.method adjustToFowards(I)V
    .locals 2

    .line 988
    iget-boolean v0, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;->adjustForwards:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;->dayOfMonth:I

    if-lez v0, :cond_0

    .line 989
    iget-object v1, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;->month:Lorg/threeten/bp/Month;

    invoke-static {p1, v1, v0}, Lorg/threeten/bp/LocalDate;->of(ILorg/threeten/bp/Month;I)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    const-wide/16 v0, 0x6

    invoke-virtual {p1, v0, v1}, Lorg/threeten/bp/LocalDate;->minusDays(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    .line 990
    invoke-virtual {p1}, Lorg/threeten/bp/LocalDate;->getDayOfMonth()I

    move-result v0

    iput v0, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;->dayOfMonth:I

    .line 991
    invoke-virtual {p1}, Lorg/threeten/bp/LocalDate;->getMonth()Lorg/threeten/bp/Month;

    move-result-object p1

    iput-object p1, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;->month:Lorg/threeten/bp/Month;

    const/4 p1, 0x1

    .line 992
    iput-boolean p1, p0, Lorg/threeten/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;->adjustForwards:Z

    :cond_0
    return-void
.end method

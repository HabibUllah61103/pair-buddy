.class public final synthetic Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilderForRecord$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lexpo/modules/kotlin/records/formatters/Formatter;


# direct methods
.method public synthetic constructor <init>(Lexpo/modules/kotlin/records/formatters/Formatter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilderForRecord$$ExternalSyntheticLambda1;->f$0:Lexpo/modules/kotlin/records/formatters/Formatter;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilderForRecord$$ExternalSyntheticLambda1;->f$0:Lexpo/modules/kotlin/records/formatters/Formatter;

    check-cast p1, Lexpo/modules/kotlin/records/Record;

    invoke-static {v0, p1}, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilderForRecord;->$r8$lambda$8qgmWuZPu3K-Zz9sGMb4Cwf2qEw(Lexpo/modules/kotlin/records/formatters/Formatter;Lexpo/modules/kotlin/records/Record;)Lexpo/modules/kotlin/records/formatters/FormattedRecord;

    move-result-object p1

    return-object p1
.end method

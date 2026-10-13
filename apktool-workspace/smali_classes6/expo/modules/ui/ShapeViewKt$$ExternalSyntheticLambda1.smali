.class public final synthetic Lexpo/modules/ui/ShapeViewKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lexpo/modules/ui/ShapeProps;


# direct methods
.method public synthetic constructor <init>(Lexpo/modules/ui/ShapeProps;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/ui/ShapeViewKt$$ExternalSyntheticLambda1;->f$0:Lexpo/modules/ui/ShapeProps;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lexpo/modules/ui/ShapeViewKt$$ExternalSyntheticLambda1;->f$0:Lexpo/modules/ui/ShapeProps;

    check-cast p1, Landroidx/compose/ui/draw/CacheDrawScope;

    invoke-static {v0, p1}, Lexpo/modules/ui/ShapeViewKt;->$r8$lambda$rLHWZRoiNlP26bvHP3OHVqn522A(Lexpo/modules/ui/ShapeProps;Landroidx/compose/ui/draw/CacheDrawScope;)Landroidx/compose/ui/draw/DrawResult;

    move-result-object p1

    return-object p1
.end method

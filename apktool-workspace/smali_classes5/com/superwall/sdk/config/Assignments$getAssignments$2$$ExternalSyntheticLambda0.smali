.class public final synthetic Lcom/superwall/sdk/config/Assignments$getAssignments$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Ljava/util/Set;

.field public final synthetic f$2:Lcom/superwall/sdk/config/Assignments;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/Set;Lcom/superwall/sdk/config/Assignments;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/superwall/sdk/config/Assignments$getAssignments$2$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/superwall/sdk/config/Assignments$getAssignments$2$$ExternalSyntheticLambda0;->f$1:Ljava/util/Set;

    iput-object p3, p0, Lcom/superwall/sdk/config/Assignments$getAssignments$2$$ExternalSyntheticLambda0;->f$2:Lcom/superwall/sdk/config/Assignments;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/superwall/sdk/config/Assignments$getAssignments$2$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/superwall/sdk/config/Assignments$getAssignments$2$$ExternalSyntheticLambda0;->f$1:Ljava/util/Set;

    iget-object v2, p0, Lcom/superwall/sdk/config/Assignments$getAssignments$2$$ExternalSyntheticLambda0;->f$2:Lcom/superwall/sdk/config/Assignments;

    check-cast p1, Ljava/util/Map;

    invoke-static {v0, v1, v2, p1}, Lcom/superwall/sdk/config/Assignments$getAssignments$2;->$r8$lambda$_5LvLVvmO6ka9crVroLM6uUHQPc(Ljava/util/List;Ljava/util/Set;Lcom/superwall/sdk/config/Assignments;Ljava/util/Map;)Lcom/superwall/sdk/config/ConfigLogic$AssignmentOutcome;

    move-result-object p1

    return-object p1
.end method

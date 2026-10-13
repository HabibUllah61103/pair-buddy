.class public final Landroidx/compose/material3/ModalWideNavigationRailDefaults;
.super Ljava/lang/Object;
.source "WideNavigationRail.kt"


# annotations
.annotation runtime Lkotlin/Deprecated;
    level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
    message = "Deprecated in favor of default values in WideNavigationRailDefaults"
    replaceWith = .subannotation Lkotlin/ReplaceWith;
        expression = "WideNavigationRailDefaults"
        imports = {}
    .end subannotation
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0006\u0010\u0003\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Landroidx/compose/material3/ModalWideNavigationRailDefaults;",
        "",
        "<init>",
        "()V",
        "Properties",
        "Landroidx/compose/material3/ModalWideNavigationRailProperties;",
        "getProperties$annotations",
        "getProperties",
        "()Landroidx/compose/material3/ModalWideNavigationRailProperties;",
        "material3"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Landroidx/compose/material3/ModalWideNavigationRailDefaults;

.field private static final Properties:Landroidx/compose/material3/ModalWideNavigationRailProperties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material3/ModalWideNavigationRailDefaults;

    invoke-direct {v0}, Landroidx/compose/material3/ModalWideNavigationRailDefaults;-><init>()V

    sput-object v0, Landroidx/compose/material3/ModalWideNavigationRailDefaults;->INSTANCE:Landroidx/compose/material3/ModalWideNavigationRailDefaults;

    .line 1141
    invoke-static {}, Landroidx/compose/material3/WideNavigationRail_androidKt;->createDefaultModalWideNavigationRailProperties()Landroidx/compose/material3/ModalWideNavigationRailProperties;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/ModalWideNavigationRailDefaults;->Properties:Landroidx/compose/material3/ModalWideNavigationRailProperties;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getProperties$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Deprecated in favor of function with WideNavigationRailDefaults.ModalExpandedProperties"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "WideNavigationRailDefaults.ModalExpandedProperties"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method


# virtual methods
.method public final getProperties()Landroidx/compose/material3/ModalWideNavigationRailProperties;
    .locals 1

    .line 1140
    sget-object v0, Landroidx/compose/material3/ModalWideNavigationRailDefaults;->Properties:Landroidx/compose/material3/ModalWideNavigationRailProperties;

    return-object v0
.end method

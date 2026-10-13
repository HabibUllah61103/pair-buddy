package expo.modules.ui;

import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.BorderStrokeKt;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.material3.CardDefaults;
import androidx.compose.material3.CardElevation;
import androidx.compose.material3.CardKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.unit.Dp;
import androidx.profileinstaller.ProfileVerifier;
import expo.modules.kotlin.AppContext;
import expo.modules.kotlin.views.ComposableScope;
import expo.modules.kotlin.views.ExpoComposeViewKt;
import expo.modules.kotlin.views.FunctionalComposableScope;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CardView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000$\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0019\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0002\u0010\u0005\u001a\u0019\u0010\u0006\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0007H\u0007¢\u0006\u0002\u0010\b\u001a\u0019\u0010\t\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\nH\u0007¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"CardContent", "", "Lexpo/modules/kotlin/views/FunctionalComposableScope;", "props", "Lexpo/modules/ui/CardProps;", "(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/CardProps;Landroidx/compose/runtime/Composer;I)V", "ElevatedCardContent", "Lexpo/modules/ui/ElevatedCardProps;", "(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/ElevatedCardProps;Landroidx/compose/runtime/Composer;I)V", "OutlinedCardContent", "Lexpo/modules/ui/OutlinedCardProps;", "(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/OutlinedCardProps;Landroidx/compose/runtime/Composer;I)V", "expo-ui_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class CardViewKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit CardContent$lambda$0(FunctionalComposableScope functionalComposableScope, CardProps cardProps, int i, Composer composer, int i2) {
        CardContent(functionalComposableScope, cardProps, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit ElevatedCardContent$lambda$1(FunctionalComposableScope functionalComposableScope, ElevatedCardProps elevatedCardProps, int i, Composer composer, int i2) {
        ElevatedCardContent(functionalComposableScope, elevatedCardProps, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit OutlinedCardContent$lambda$2(FunctionalComposableScope functionalComposableScope, OutlinedCardProps outlinedCardProps, int i, Composer composer, int i2) {
        OutlinedCardContent(functionalComposableScope, outlinedCardProps, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    public static final void CardContent(final FunctionalComposableScope functionalComposableScope, final CardProps props, Composer composer, final int i) {
        int i2;
        CardElevation cardElevationM2149cardElevationaqJV_2Y;
        BorderStroke borderStroke;
        Intrinsics.checkNotNullParameter(functionalComposableScope, "<this>");
        Intrinsics.checkNotNullParameter(props, "props");
        Composer composerStartRestartGroup = composer.startRestartGroup(-1121341611);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(CardContent)39@1227L83,41@1342L12,42@1383L202,66@2118L84,71@2206L125:CardView.kt#v15e7d");
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? composerStartRestartGroup.changed(functionalComposableScope) : composerStartRestartGroup.changedInstance(functionalComposableScope) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(props) ? 32 : 16;
        }
        if ((i2 & 19) != 18 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1121341611, i2, -1, "expo.modules.ui.CardContent (CardView.kt:38)");
            }
            Modifier modifierApplyModifiers = ModifierRegistry.INSTANCE.applyModifiers(props.getModifiers(), functionalComposableScope.getAppContext(), functionalComposableScope.getComposableScope(), functionalComposableScope.getGlobalEventDispatcher(), composerStartRestartGroup, (AppContext.$stable << 3) | (ComposableScope.$stable << 6));
            androidx.compose.material3.CardColors cardColors = CardDefaults.INSTANCE.cardColors(composerStartRestartGroup, CardDefaults.$stable);
            CardDefaults cardDefaults = CardDefaults.INSTANCE;
            Color composeOrNull = UtilsKt.getComposeOrNull(props.getColors().getContainerColor());
            long jM6068unboximpl = composeOrNull != null ? composeOrNull.m6068unboximpl() : cardColors.getContainerColor();
            Color composeOrNull2 = UtilsKt.getComposeOrNull(props.getColors().getContentColor());
            androidx.compose.material3.CardColors cardColorsM2148cardColorsro_MJ88 = cardDefaults.m2148cardColorsro_MJ88(jM6068unboximpl, composeOrNull2 != null ? composeOrNull2.m6068unboximpl() : cardColors.getContentColor(), 0L, 0L, composerStartRestartGroup, CardDefaults.$stable << 12, 12);
            if (props.getElevation() != null) {
                composerStartRestartGroup.startReplaceGroup(368208194);
                ComposerKt.sourceInformation(composerStartRestartGroup, "50@1653L52");
                cardElevationM2149cardElevationaqJV_2Y = CardDefaults.INSTANCE.m2149cardElevationaqJV_2Y(Dp.m8892constructorimpl(props.getElevation().floatValue()), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerStartRestartGroup, CardDefaults.$stable << 18, 62);
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(368287399);
                ComposerKt.sourceInformation(composerStartRestartGroup, "52@1734L15");
                cardElevationM2149cardElevationaqJV_2Y = CardDefaults.INSTANCE.m2149cardElevationaqJV_2Y(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerStartRestartGroup, CardDefaults.$stable << 18, 63);
                composerStartRestartGroup.endReplaceGroup();
            }
            CardElevation cardElevation = cardElevationM2149cardElevationaqJV_2Y;
            composerStartRestartGroup.startReplaceGroup(427524251);
            ComposerKt.sourceInformation(composerStartRestartGroup, "60@2007L20");
            BorderStroke borderStroke2 = null;
            if (props.getBorder() != null) {
                Color composeOrNull3 = UtilsKt.getComposeOrNull(props.getBorder().getColor());
                if (composeOrNull3 != null) {
                    borderStroke = BorderStrokeKt.m334BorderStrokecXLIe8U(Dp.m8892constructorimpl(props.getBorder().getWidth()), composeOrNull3.m6068unboximpl());
                } else {
                    borderStroke = new BorderStroke(Dp.m8892constructorimpl(props.getBorder().getWidth()), CardDefaults.INSTANCE.outlinedCardBorder(false, composerStartRestartGroup, CardDefaults.$stable << 3, 1).getBrush(), null);
                }
                borderStroke2 = borderStroke;
            }
            composerStartRestartGroup.endReplaceGroup();
            CardKt.Card(modifierApplyModifiers, null, cardColorsM2148cardColorsro_MJ88, cardElevation, borderStroke2, ComposableLambdaKt.rememberComposableLambda(1403231718, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: expo.modules.ui.CardViewKt$CardContent$content$1
                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer2, Integer num) {
                    invoke(columnScope, composer2, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(ColumnScope columnScope, Composer composer2, int i3) {
                    Intrinsics.checkNotNullParameter(columnScope, "<this>");
                    ComposerKt.sourceInformation(composer2, "C68@2183L15:CardView.kt#v15e7d");
                    if ((i3 & 6) == 0) {
                        i3 |= composer2.changed(columnScope) ? 4 : 2;
                    }
                    if ((i3 & 19) == 18 && composer2.getSkipping()) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1403231718, i3, -1, "expo.modules.ui.CardContent.<anonymous> (CardView.kt:67)");
                    }
                    functionalComposableScope.Children(ExpoComposeViewKt.with(new ComposableScope(null, null, null, null, 15, null), columnScope), composer2, ComposableScope.$stable | (FunctionalComposableScope.$stable << 3));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composerStartRestartGroup, 54), composerStartRestartGroup, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 2);
            composerStartRestartGroup = composerStartRestartGroup;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: expo.modules.ui.CardViewKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return CardViewKt.CardContent$lambda$0(functionalComposableScope, props, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    public static final void ElevatedCardContent(final FunctionalComposableScope functionalComposableScope, final ElevatedCardProps props, Composer composer, final int i) {
        int i2;
        CardElevation cardElevationM2151elevatedCardElevationaqJV_2Y;
        Intrinsics.checkNotNullParameter(functionalComposableScope, "<this>");
        Intrinsics.checkNotNullParameter(props, "props");
        Composer composerStartRestartGroup = composer.startRestartGroup(-124412095);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(ElevatedCardContent)92@2662L83,94@2777L20,95@2826L210,108@3274L84,113@3362L112:CardView.kt#v15e7d");
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? composerStartRestartGroup.changed(functionalComposableScope) : composerStartRestartGroup.changedInstance(functionalComposableScope) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(props) ? 32 : 16;
        }
        if ((i2 & 19) != 18 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-124412095, i2, -1, "expo.modules.ui.ElevatedCardContent (CardView.kt:91)");
            }
            Modifier modifierApplyModifiers = ModifierRegistry.INSTANCE.applyModifiers(props.getModifiers(), functionalComposableScope.getAppContext(), functionalComposableScope.getComposableScope(), functionalComposableScope.getGlobalEventDispatcher(), composerStartRestartGroup, (ComposableScope.$stable << 6) | (AppContext.$stable << 3));
            androidx.compose.material3.CardColors cardColorsElevatedCardColors = CardDefaults.INSTANCE.elevatedCardColors(composerStartRestartGroup, CardDefaults.$stable);
            CardDefaults cardDefaults = CardDefaults.INSTANCE;
            Color composeOrNull = UtilsKt.getComposeOrNull(props.getColors().getContainerColor());
            long jM6068unboximpl = composeOrNull != null ? composeOrNull.m6068unboximpl() : cardColorsElevatedCardColors.getContainerColor();
            Color composeOrNull2 = UtilsKt.getComposeOrNull(props.getColors().getContentColor());
            androidx.compose.material3.CardColors cardColorsM2150elevatedCardColorsro_MJ88 = cardDefaults.m2150elevatedCardColorsro_MJ88(jM6068unboximpl, composeOrNull2 != null ? composeOrNull2.m6068unboximpl() : cardColorsElevatedCardColors.getContentColor(), 0L, 0L, composerStartRestartGroup, CardDefaults.$stable << 12, 12);
            if (props.getElevation() != null) {
                composerStartRestartGroup.startReplaceGroup(196599502);
                ComposerKt.sourceInformation(composerStartRestartGroup, "103@3104L60");
                cardElevationM2151elevatedCardElevationaqJV_2Y = CardDefaults.INSTANCE.m2151elevatedCardElevationaqJV_2Y(Dp.m8892constructorimpl(props.getElevation().floatValue()), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerStartRestartGroup, CardDefaults.$stable << 18, 62);
                composerStartRestartGroup = composerStartRestartGroup;
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(196686643);
                ComposerKt.sourceInformation(composerStartRestartGroup, "105@3193L23");
                cardElevationM2151elevatedCardElevationaqJV_2Y = CardDefaults.INSTANCE.m2151elevatedCardElevationaqJV_2Y(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerStartRestartGroup, CardDefaults.$stable << 18, 63);
                composerStartRestartGroup = composerStartRestartGroup;
                composerStartRestartGroup.endReplaceGroup();
            }
            CardKt.ElevatedCard(modifierApplyModifiers, null, cardColorsM2150elevatedCardColorsro_MJ88, cardElevationM2151elevatedCardElevationaqJV_2Y, ComposableLambdaKt.rememberComposableLambda(430590930, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: expo.modules.ui.CardViewKt$ElevatedCardContent$content$1
                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer2, Integer num) {
                    invoke(columnScope, composer2, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(ColumnScope columnScope, Composer composer2, int i3) {
                    Intrinsics.checkNotNullParameter(columnScope, "<this>");
                    ComposerKt.sourceInformation(composer2, "C110@3339L15:CardView.kt#v15e7d");
                    if ((i3 & 6) == 0) {
                        i3 |= composer2.changed(columnScope) ? 4 : 2;
                    }
                    if ((i3 & 19) == 18 && composer2.getSkipping()) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(430590930, i3, -1, "expo.modules.ui.ElevatedCardContent.<anonymous> (CardView.kt:109)");
                    }
                    functionalComposableScope.Children(ExpoComposeViewKt.with(new ComposableScope(null, null, null, null, 15, null), columnScope), composer2, ComposableScope.$stable | (FunctionalComposableScope.$stable << 3));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composerStartRestartGroup, 54), composerStartRestartGroup, 24576, 2);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: expo.modules.ui.CardViewKt$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return CardViewKt.ElevatedCardContent$lambda$1(functionalComposableScope, props, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    public static final void OutlinedCardContent(final FunctionalComposableScope functionalComposableScope, final OutlinedCardProps props, Composer composer, final int i) {
        int i2;
        CardElevation cardElevationM2153outlinedCardElevationaqJV_2Y;
        BorderStroke borderStrokeOutlinedCardBorder;
        Intrinsics.checkNotNullParameter(functionalComposableScope, "<this>");
        Intrinsics.checkNotNullParameter(props, "props");
        Composer composerStartRestartGroup = composer.startRestartGroup(137511889);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(OutlinedCardContent)134@3839L83,136@3954L20,137@4003L210,161@4791L84,166@4879L133:CardView.kt#v15e7d");
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? composerStartRestartGroup.changed(functionalComposableScope) : composerStartRestartGroup.changedInstance(functionalComposableScope) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(props) ? 32 : 16;
        }
        if ((i2 & 19) != 18 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(137511889, i2, -1, "expo.modules.ui.OutlinedCardContent (CardView.kt:133)");
            }
            Modifier modifierApplyModifiers = ModifierRegistry.INSTANCE.applyModifiers(props.getModifiers(), functionalComposableScope.getAppContext(), functionalComposableScope.getComposableScope(), functionalComposableScope.getGlobalEventDispatcher(), composerStartRestartGroup, (AppContext.$stable << 3) | (ComposableScope.$stable << 6));
            androidx.compose.material3.CardColors cardColorsOutlinedCardColors = CardDefaults.INSTANCE.outlinedCardColors(composerStartRestartGroup, CardDefaults.$stable);
            CardDefaults cardDefaults = CardDefaults.INSTANCE;
            Color composeOrNull = UtilsKt.getComposeOrNull(props.getColors().getContainerColor());
            long jM6068unboximpl = composeOrNull != null ? composeOrNull.m6068unboximpl() : cardColorsOutlinedCardColors.getContainerColor();
            Color composeOrNull2 = UtilsKt.getComposeOrNull(props.getColors().getContentColor());
            androidx.compose.material3.CardColors cardColorsM2152outlinedCardColorsro_MJ88 = cardDefaults.m2152outlinedCardColorsro_MJ88(jM6068unboximpl, composeOrNull2 != null ? composeOrNull2.m6068unboximpl() : cardColorsOutlinedCardColors.getContentColor(), 0L, 0L, composerStartRestartGroup, CardDefaults.$stable << 12, 12);
            if (props.getElevation() != null) {
                composerStartRestartGroup.startReplaceGroup(-781569986);
                ComposerKt.sourceInformation(composerStartRestartGroup, "145@4281L60");
                cardElevationM2153outlinedCardElevationaqJV_2Y = CardDefaults.INSTANCE.m2153outlinedCardElevationaqJV_2Y(Dp.m8892constructorimpl(props.getElevation().floatValue()), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerStartRestartGroup, CardDefaults.$stable << 18, 62);
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(-781482845);
                ComposerKt.sourceInformation(composerStartRestartGroup, "147@4370L23");
                cardElevationM2153outlinedCardElevationaqJV_2Y = CardDefaults.INSTANCE.m2153outlinedCardElevationaqJV_2Y(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerStartRestartGroup, CardDefaults.$stable << 18, 63);
                composerStartRestartGroup.endReplaceGroup();
            }
            CardElevation cardElevation = cardElevationM2153outlinedCardElevationaqJV_2Y;
            if (props.getBorder() != null) {
                composerStartRestartGroup.startReplaceGroup(-781388295);
                ComposerKt.sourceInformation(composerStartRestartGroup, "155@4651L20");
                Color composeOrNull3 = UtilsKt.getComposeOrNull(props.getBorder().getColor());
                if (composeOrNull3 != null) {
                    borderStrokeOutlinedCardBorder = BorderStrokeKt.m334BorderStrokecXLIe8U(Dp.m8892constructorimpl(props.getBorder().getWidth()), composeOrNull3.m6068unboximpl());
                } else {
                    borderStrokeOutlinedCardBorder = new BorderStroke(Dp.m8892constructorimpl(props.getBorder().getWidth()), CardDefaults.INSTANCE.outlinedCardBorder(false, composerStartRestartGroup, CardDefaults.$stable << 3, 1).getBrush(), null);
                }
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(-781142682);
                ComposerKt.sourceInformation(composerStartRestartGroup, "158@4713L20");
                borderStrokeOutlinedCardBorder = CardDefaults.INSTANCE.outlinedCardBorder(false, composerStartRestartGroup, CardDefaults.$stable << 3, 1);
                composerStartRestartGroup.endReplaceGroup();
            }
            CardKt.OutlinedCard(modifierApplyModifiers, null, cardColorsM2152outlinedCardColorsro_MJ88, cardElevation, borderStrokeOutlinedCardBorder, ComposableLambdaKt.rememberComposableLambda(692514914, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: expo.modules.ui.CardViewKt$OutlinedCardContent$content$1
                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(ColumnScope columnScope, Composer composer2, Integer num) {
                    invoke(columnScope, composer2, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(ColumnScope columnScope, Composer composer2, int i3) {
                    Intrinsics.checkNotNullParameter(columnScope, "<this>");
                    ComposerKt.sourceInformation(composer2, "C163@4856L15:CardView.kt#v15e7d");
                    if ((i3 & 6) == 0) {
                        i3 |= composer2.changed(columnScope) ? 4 : 2;
                    }
                    if ((i3 & 19) == 18 && composer2.getSkipping()) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(692514914, i3, -1, "expo.modules.ui.OutlinedCardContent.<anonymous> (CardView.kt:162)");
                    }
                    functionalComposableScope.Children(ExpoComposeViewKt.with(new ComposableScope(null, null, null, null, 15, null), columnScope), composer2, ComposableScope.$stable | (FunctionalComposableScope.$stable << 3));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composerStartRestartGroup, 54), composerStartRestartGroup, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 2);
            composerStartRestartGroup = composerStartRestartGroup;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: expo.modules.ui.CardViewKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return CardViewKt.OutlinedCardContent$lambda$2(functionalComposableScope, props, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }
}

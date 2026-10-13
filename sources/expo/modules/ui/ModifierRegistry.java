package expo.modules.ui;

import android.graphics.Color;
import androidx.compose.animation.AnimationModifierKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.BorderStrokeKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.selection.SelectableGroupKt;
import androidx.compose.foundation.selection.SelectableKt;
import androidx.compose.foundation.selection.ToggleableKt;
import androidx.compose.foundation.shape.CutCornerShape;
import androidx.compose.foundation.shape.CutCornerShapeKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.ExposedDropdownMenuAnchorType;
import androidx.compose.material3.ExposedDropdownMenuBoxScope;
import androidx.compose.material3.MaterialShapesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.ZIndexModifierKt;
import androidx.compose.ui.draw.AlphaKt;
import androidx.compose.ui.draw.BlurKt;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.draw.RotateKt;
import androidx.compose.ui.draw.ShadowKt;
import androidx.compose.ui.graphics.CompositingStrategy;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.TransformOriginKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.graphics.shapes.RoundedPolygon;
import com.facebook.react.modules.appstate.AppStateModule;
import com.facebook.react.uimanager.ViewProps;
import expo.modules.interfaces.permissions.PermissionsResponse;
import expo.modules.kotlin.AppContext;
import expo.modules.kotlin.exception.MissingTypeConverter;
import expo.modules.kotlin.records.RecordTypeConverter;
import expo.modules.kotlin.records.RecordTypeConverterKt;
import expo.modules.kotlin.types.TypeConverter;
import expo.modules.kotlin.types.TypeConverterProviderImpl;
import expo.modules.kotlin.views.ComposableScope;
import expo.modules.ui.convertibles.AlignmentType;
import expo.modules.ui.convertibles.AnimatableFloatKt;
import expo.modules.ui.convertibles.CompositingStrategyType;
import expo.modules.ui.convertibles.GraphicsLayerParams;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function6;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: compiled from: ModifierRegistry.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0003¢\u0006\u0002\u0010\u0016J|\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u00062g\u0010\u0019\u001ac\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00010\bj\u0002`\t\u0012\u0006\u0012\u0004\u0018\u00010\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0012(\u0012&\u0012\u0004\u0012\u00020\u0006\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00010\b\u0012\u0004\u0012\u00020\r0\fj\u0002`\u000e\u0012\u0004\u0012\u00020\u000f0\u0007j\u0002`\u0011¢\u0006\u0002\b\u0010¢\u0006\u0002\u0010\u001aJk\u0010\u001b\u001a\u00020\u000f2 \u0010\u001c\u001a\u001c\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00010\bj\u0002`\t\u0018\u00010\u001d2\u0006\u0010\u001e\u001a\u00020\u000b2\u0006\u0010\u001f\u001a\u00020\n2*\u0010 \u001a&\u0012\u0004\u0012\u00020\u0006\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00010\b\u0012\u0004\u0012\u00020\r0\fj\u0002`\u000eH\u0007¢\u0006\u0002\u0010!J\u000e\u0010\"\u001a\u00020#2\u0006\u0010\u0018\u001a\u00020\u0006J\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00060\u001dJ\b\u0010%\u001a\u00020\rH\u0002R{\u0010\u0004\u001ao\u0012\u0004\u0012\u00020\u0006\u0012e\u0012c\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00010\bj\u0002`\t\u0012\u0006\u0012\u0004\u0018\u00010\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0012(\u0012&\u0012\u0004\u0012\u00020\u0006\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00010\b\u0012\u0004\u0012\u00020\r0\fj\u0002`\u000e\u0012\u0004\u0012\u00020\u000f0\u0007j\u0002`\u0011¢\u0006\u0002\b\u00100\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Lexpo/modules/ui/ModifierRegistry;", "", "<init>", "()V", "modifierFactories", "", "", "Lkotlin/Function4;", "", "Lexpo/modules/ui/ModifierType;", "Lexpo/modules/kotlin/views/ComposableScope;", "Lexpo/modules/kotlin/AppContext;", "Lkotlin/Function2;", "", "Lexpo/modules/ui/ModifierEventDispatcher;", "Landroidx/compose/ui/Modifier;", "Landroidx/compose/runtime/Composable;", "Lexpo/modules/ui/ModifierFactory;", "resolveShape", "Landroidx/compose/ui/graphics/Shape;", "shape", "Lexpo/modules/ui/BuiltinShapeRecord;", "(Lexpo/modules/ui/BuiltinShapeRecord;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;", "register", "type", "factory", "(Ljava/lang/String;Lkotlin/jvm/functions/Function6;)V", "applyModifiers", "modifiers", "", "appContext", PermissionsResponse.SCOPE_KEY, "eventDispatcher", "(Ljava/util/List;Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/views/ComposableScope;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;", "hasModifier", "", "registeredTypes", "registerBuiltInModifiers", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ModifierRegistry {
    public static final int $stable;
    public static final ModifierRegistry INSTANCE;
    private static final Map<String, Function6<Map<String, ? extends Object>, ComposableScope, AppContext, Function2<? super String, ? super Map<String, ? extends Object>, Unit>, Composer, Integer, Modifier>> modifierFactories;

    private ModifierRegistry() {
    }

    static {
        ModifierRegistry modifierRegistry = new ModifierRegistry();
        INSTANCE = modifierRegistry;
        modifierFactories = new LinkedHashMap();
        modifierRegistry.registerBuiltInModifiers();
        $stable = 8;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Shape resolveShape(BuiltinShapeRecord builtinShapeRecord, Composer composer, int i) {
        CutCornerShape shape;
        CutCornerShape cutCornerShapeM1279CutCornerShapea9UjIt4;
        RoundedCornerShape roundedCornerShapeM1286RoundedCornerShapea9UjIt4;
        composer.startReplaceGroup(664829230);
        ComposerKt.sourceInformation(composer, "C(resolveShape)265@8401L9:ModifierRegistry.kt#v15e7d");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(664829230, i, -1, "expo.modules.ui.ModifierRegistry.resolveShape (ModifierRegistry.kt:234)");
        }
        BuiltinShapeType type = builtinShapeRecord.getType();
        if (type == BuiltinShapeType.RECTANGLE) {
            shape = RectangleShapeKt.getRectangleShape();
        } else if (type == BuiltinShapeType.CIRCLE) {
            shape = RoundedCornerShapeKt.getCircleShape();
        } else {
            if (type == BuiltinShapeType.ROUNDED_CORNER) {
                if (builtinShapeRecord.getTopStart() != null || builtinShapeRecord.getTopEnd() != null || builtinShapeRecord.getBottomStart() != null || builtinShapeRecord.getBottomEnd() != null) {
                    Float topStart = builtinShapeRecord.getTopStart();
                    float fM8892constructorimpl = Dp.m8892constructorimpl(topStart != null ? topStart.floatValue() : 0.0f);
                    Float topEnd = builtinShapeRecord.getTopEnd();
                    float fM8892constructorimpl2 = Dp.m8892constructorimpl(topEnd != null ? topEnd.floatValue() : 0.0f);
                    Float bottomStart = builtinShapeRecord.getBottomStart();
                    float fM8892constructorimpl3 = Dp.m8892constructorimpl(bottomStart != null ? bottomStart.floatValue() : 0.0f);
                    Float bottomEnd = builtinShapeRecord.getBottomEnd();
                    roundedCornerShapeM1286RoundedCornerShapea9UjIt4 = RoundedCornerShapeKt.m1286RoundedCornerShapea9UjIt4(fM8892constructorimpl, fM8892constructorimpl2, Dp.m8892constructorimpl(bottomEnd != null ? bottomEnd.floatValue() : 0.0f), fM8892constructorimpl3);
                } else {
                    Float radius = builtinShapeRecord.getRadius();
                    roundedCornerShapeM1286RoundedCornerShapea9UjIt4 = RoundedCornerShapeKt.m1285RoundedCornerShape0680j_4(Dp.m8892constructorimpl(radius != null ? radius.floatValue() : 0.0f));
                }
                shape = roundedCornerShapeM1286RoundedCornerShapea9UjIt4;
            } else if (type == BuiltinShapeType.CUT_CORNER) {
                if (builtinShapeRecord.getTopStart() != null || builtinShapeRecord.getTopEnd() != null || builtinShapeRecord.getBottomStart() != null || builtinShapeRecord.getBottomEnd() != null) {
                    Float topStart2 = builtinShapeRecord.getTopStart();
                    float fM8892constructorimpl4 = Dp.m8892constructorimpl(topStart2 != null ? topStart2.floatValue() : 0.0f);
                    Float topEnd2 = builtinShapeRecord.getTopEnd();
                    float fM8892constructorimpl5 = Dp.m8892constructorimpl(topEnd2 != null ? topEnd2.floatValue() : 0.0f);
                    Float bottomStart2 = builtinShapeRecord.getBottomStart();
                    float fM8892constructorimpl6 = Dp.m8892constructorimpl(bottomStart2 != null ? bottomStart2.floatValue() : 0.0f);
                    Float bottomEnd2 = builtinShapeRecord.getBottomEnd();
                    cutCornerShapeM1279CutCornerShapea9UjIt4 = CutCornerShapeKt.m1279CutCornerShapea9UjIt4(fM8892constructorimpl4, fM8892constructorimpl5, Dp.m8892constructorimpl(bottomEnd2 != null ? bottomEnd2.floatValue() : 0.0f), fM8892constructorimpl6);
                } else {
                    Float radius2 = builtinShapeRecord.getRadius();
                    cutCornerShapeM1279CutCornerShapea9UjIt4 = CutCornerShapeKt.m1278CutCornerShape0680j_4(Dp.m8892constructorimpl(radius2 != null ? radius2.floatValue() : 0.0f));
                }
                shape = cutCornerShapeM1279CutCornerShapea9UjIt4;
            } else {
                if (type != BuiltinShapeType.MATERIAL) {
                    throw new NoWhenBranchMatchedException();
                }
                MaterialShapeType name = builtinShapeRecord.getName();
                RoundedPolygon roundedPolygon = name != null ? name.toRoundedPolygon() : null;
                shape = roundedPolygon == null ? null : MaterialShapesKt.toShape(roundedPolygon, 0, composer, 0, 1);
            }
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        return shape;
    }

    public final void register(String type, Function6<? super Map<String, ? extends Object>, ? super ComposableScope, ? super AppContext, ? super Function2<? super String, ? super Map<String, ? extends Object>, Unit>, ? super Composer, ? super Integer, ? extends Modifier> factory) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(factory, "factory");
        modifierFactories.put(type, factory);
    }

    public final Modifier applyModifiers(List<? extends Map<String, ? extends Object>> list, AppContext appContext, ComposableScope scope, Function2<? super String, ? super Map<String, ? extends Object>, Unit> eventDispatcher, Composer composer, int i) {
        AppContext appContext2;
        ComposableScope composableScope;
        Function2<? super String, ? super Map<String, ? extends Object>, Unit> function2;
        Composer composer2;
        Modifier modifierInvoke;
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(eventDispatcher, "eventDispatcher");
        composer.startReplaceGroup(-1182308343);
        ComposerKt.sourceInformation(composer, "C(applyModifiers)P(2!1,3):ModifierRegistry.kt#v15e7d");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1182308343, i, -1, "expo.modules.ui.ModifierRegistry.applyModifiers (ModifierRegistry.kt:294)");
        }
        List<? extends Map<String, ? extends Object>> list2 = list;
        if (list2 == null || list2.isEmpty()) {
            Modifier.Companion companion = Modifier.INSTANCE;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composer.endReplaceGroup();
            return companion;
        }
        Modifier.Companion companion2 = Modifier.INSTANCE;
        Intrinsics.checkNotNull(companion2, "null cannot be cast to non-null type androidx.compose.ui.Modifier");
        Modifier.Companion companionThen = companion2;
        for (Map<String, ? extends Object> map : list) {
            Object obj = map.get("$type");
            String str = obj instanceof String ? (String) obj : null;
            if (str == null) {
                appContext2 = appContext;
                composableScope = scope;
                function2 = eventDispatcher;
                composer2 = composer;
            } else {
                Function6<Map<String, ? extends Object>, ComposableScope, AppContext, Function2<? super String, ? super Map<String, ? extends Object>, Unit>, Composer, Integer, Modifier> function6 = modifierFactories.get(str);
                composer.startReplaceGroup(1968029083);
                ComposerKt.sourceInformation(composer, "298@9240L50");
                if (function6 == null) {
                    appContext2 = appContext;
                    function2 = eventDispatcher;
                    composer2 = composer;
                    modifierInvoke = null;
                    composableScope = scope;
                } else {
                    appContext2 = appContext;
                    composableScope = scope;
                    function2 = eventDispatcher;
                    composer2 = composer;
                    modifierInvoke = function6.invoke(map, composableScope, appContext2, function2, composer2, Integer.valueOf((ComposableScope.$stable << 3) | ((i >> 3) & 112) | (AppContext.$stable << 6) | ((i << 3) & 896) | (i & 7168)));
                }
                composer2.endReplaceGroup();
                if (modifierInvoke == null) {
                    modifierInvoke = Modifier.INSTANCE;
                }
                companionThen = companionThen.then(modifierInvoke);
            }
            scope = composableScope;
            appContext = appContext2;
            eventDispatcher = function2;
            composer = composer2;
        }
        Composer composer3 = composer;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer3.endReplaceGroup();
        return companionThen;
    }

    public final boolean hasModifier(String type) {
        Intrinsics.checkNotNullParameter(type, "type");
        return modifierFactories.get(type) != null;
    }

    public final List<String> registeredTypes() {
        return CollectionsKt.toList(modifierFactories.keySet());
    }

    private final void registerBuiltInModifiers() {
        register("paddingAll", new Function6<Map<String, ? extends Object>, ComposableScope, AppContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit>, Composer, Integer, Modifier>() { // from class: expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.1
            @Override // kotlin.jvm.functions.Function6
            public /* bridge */ /* synthetic */ Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit> function2, Composer composer, Integer num) {
                return invoke(map, composableScope, appContext, (Function2<? super String, ? super Map<String, ? extends Object>, Unit>) function2, composer, num.intValue());
            }

            public final Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, Unit> unused$var$, Composer composer, int i) throws MissingTypeConverter {
                Intrinsics.checkNotNullParameter(map, "map");
                Intrinsics.checkNotNullParameter(unused$var$, "$unused$var$");
                composer.startReplaceGroup(-137508514);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-137508514, i, -1, "expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.<anonymous> (ModifierRegistry.kt:320)");
                }
                TypeConverter<?> typeConverterObtainTypeConverter = TypeConverterProviderImpl.INSTANCE.obtainTypeConverter(Reflection.typeOf(PaddingAllParams.class));
                Intrinsics.checkNotNull(typeConverterObtainTypeConverter, "null cannot be cast to non-null type expo.modules.kotlin.records.RecordTypeConverter<T of expo.modules.kotlin.records.RecordTypeConverterKt.recordFromMap>");
                Modifier modifierM930padding3ABfNKs = PaddingKt.m930padding3ABfNKs(Modifier.INSTANCE, Dp.m8892constructorimpl(((PaddingAllParams) RecordTypeConverterKt.recordFromMap(map, (RecordTypeConverter) typeConverterObtainTypeConverter)).getAll()));
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                composer.endReplaceGroup();
                return modifierM930padding3ABfNKs;
            }
        });
        register(ViewProps.PADDING, new Function6<Map<String, ? extends Object>, ComposableScope, AppContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit>, Composer, Integer, Modifier>() { // from class: expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.2
            @Override // kotlin.jvm.functions.Function6
            public /* bridge */ /* synthetic */ Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit> function2, Composer composer, Integer num) {
                return invoke(map, composableScope, appContext, (Function2<? super String, ? super Map<String, ? extends Object>, Unit>) function2, composer, num.intValue());
            }

            public final Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, Unit> unused$var$, Composer composer, int i) throws MissingTypeConverter {
                Intrinsics.checkNotNullParameter(map, "map");
                Intrinsics.checkNotNullParameter(unused$var$, "$unused$var$");
                composer.startReplaceGroup(-460946745);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-460946745, i, -1, "expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.<anonymous> (ModifierRegistry.kt:325)");
                }
                TypeConverter<?> typeConverterObtainTypeConverter = TypeConverterProviderImpl.INSTANCE.obtainTypeConverter(Reflection.typeOf(PaddingParams.class));
                Intrinsics.checkNotNull(typeConverterObtainTypeConverter, "null cannot be cast to non-null type expo.modules.kotlin.records.RecordTypeConverter<T of expo.modules.kotlin.records.RecordTypeConverterKt.recordFromMap>");
                PaddingParams paddingParams = (PaddingParams) RecordTypeConverterKt.recordFromMap(map, (RecordTypeConverter) typeConverterObtainTypeConverter);
                Modifier modifierM933paddingqDBjuR0 = PaddingKt.m933paddingqDBjuR0(Modifier.INSTANCE, Dp.m8892constructorimpl(paddingParams.getStart()), Dp.m8892constructorimpl(paddingParams.getTop()), Dp.m8892constructorimpl(paddingParams.getEnd()), Dp.m8892constructorimpl(paddingParams.getBottom()));
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                composer.endReplaceGroup();
                return modifierM933paddingqDBjuR0;
            }
        });
        register("size", new Function6<Map<String, ? extends Object>, ComposableScope, AppContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit>, Composer, Integer, Modifier>() { // from class: expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.3
            @Override // kotlin.jvm.functions.Function6
            public /* bridge */ /* synthetic */ Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit> function2, Composer composer, Integer num) {
                return invoke(map, composableScope, appContext, (Function2<? super String, ? super Map<String, ? extends Object>, Unit>) function2, composer, num.intValue());
            }

            public final Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, Unit> unused$var$, Composer composer, int i) throws MissingTypeConverter {
                Intrinsics.checkNotNullParameter(map, "map");
                Intrinsics.checkNotNullParameter(unused$var$, "$unused$var$");
                composer.startReplaceGroup(233700262);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(233700262, i, -1, "expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.<anonymous> (ModifierRegistry.kt:336)");
                }
                TypeConverter<?> typeConverterObtainTypeConverter = TypeConverterProviderImpl.INSTANCE.obtainTypeConverter(Reflection.typeOf(SizeParams.class));
                Intrinsics.checkNotNull(typeConverterObtainTypeConverter, "null cannot be cast to non-null type expo.modules.kotlin.records.RecordTypeConverter<T of expo.modules.kotlin.records.RecordTypeConverterKt.recordFromMap>");
                SizeParams sizeParams = (SizeParams) RecordTypeConverterKt.recordFromMap(map, (RecordTypeConverter) typeConverterObtainTypeConverter);
                Modifier modifierM980sizeVpY3zN4 = SizeKt.m980sizeVpY3zN4(Modifier.INSTANCE, Dp.m8892constructorimpl(sizeParams.getWidth()), Dp.m8892constructorimpl(sizeParams.getHeight()));
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                composer.endReplaceGroup();
                return modifierM980sizeVpY3zN4;
            }
        });
        register("fillMaxSize", new Function6<Map<String, ? extends Object>, ComposableScope, AppContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit>, Composer, Integer, Modifier>() { // from class: expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.4
            @Override // kotlin.jvm.functions.Function6
            public /* bridge */ /* synthetic */ Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit> function2, Composer composer, Integer num) {
                return invoke(map, composableScope, appContext, (Function2<? super String, ? super Map<String, ? extends Object>, Unit>) function2, composer, num.intValue());
            }

            public final Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, Unit> unused$var$, Composer composer, int i) throws MissingTypeConverter {
                Intrinsics.checkNotNullParameter(map, "map");
                Intrinsics.checkNotNullParameter(unused$var$, "$unused$var$");
                composer.startReplaceGroup(928347269);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(928347269, i, -1, "expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.<anonymous> (ModifierRegistry.kt:341)");
                }
                TypeConverter<?> typeConverterObtainTypeConverter = TypeConverterProviderImpl.INSTANCE.obtainTypeConverter(Reflection.typeOf(FillMaxSizeParams.class));
                Intrinsics.checkNotNull(typeConverterObtainTypeConverter, "null cannot be cast to non-null type expo.modules.kotlin.records.RecordTypeConverter<T of expo.modules.kotlin.records.RecordTypeConverterKt.recordFromMap>");
                Modifier modifierFillMaxSize = SizeKt.fillMaxSize(Modifier.INSTANCE, ((FillMaxSizeParams) RecordTypeConverterKt.recordFromMap(map, (RecordTypeConverter) typeConverterObtainTypeConverter)).getFraction());
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                composer.endReplaceGroup();
                return modifierFillMaxSize;
            }
        });
        register("fillMaxWidth", new Function6<Map<String, ? extends Object>, ComposableScope, AppContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit>, Composer, Integer, Modifier>() { // from class: expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.5
            @Override // kotlin.jvm.functions.Function6
            public /* bridge */ /* synthetic */ Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit> function2, Composer composer, Integer num) {
                return invoke(map, composableScope, appContext, (Function2<? super String, ? super Map<String, ? extends Object>, Unit>) function2, composer, num.intValue());
            }

            public final Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, Unit> unused$var$, Composer composer, int i) throws MissingTypeConverter {
                Intrinsics.checkNotNullParameter(map, "map");
                Intrinsics.checkNotNullParameter(unused$var$, "$unused$var$");
                composer.startReplaceGroup(1622994276);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1622994276, i, -1, "expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.<anonymous> (ModifierRegistry.kt:346)");
                }
                TypeConverter<?> typeConverterObtainTypeConverter = TypeConverterProviderImpl.INSTANCE.obtainTypeConverter(Reflection.typeOf(FillMaxWidthParams.class));
                Intrinsics.checkNotNull(typeConverterObtainTypeConverter, "null cannot be cast to non-null type expo.modules.kotlin.records.RecordTypeConverter<T of expo.modules.kotlin.records.RecordTypeConverterKt.recordFromMap>");
                Modifier modifierFillMaxWidth = SizeKt.fillMaxWidth(Modifier.INSTANCE, ((FillMaxWidthParams) RecordTypeConverterKt.recordFromMap(map, (RecordTypeConverter) typeConverterObtainTypeConverter)).getFraction());
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                composer.endReplaceGroup();
                return modifierFillMaxWidth;
            }
        });
        register("fillMaxHeight", new Function6<Map<String, ? extends Object>, ComposableScope, AppContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit>, Composer, Integer, Modifier>() { // from class: expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.6
            @Override // kotlin.jvm.functions.Function6
            public /* bridge */ /* synthetic */ Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit> function2, Composer composer, Integer num) {
                return invoke(map, composableScope, appContext, (Function2<? super String, ? super Map<String, ? extends Object>, Unit>) function2, composer, num.intValue());
            }

            public final Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, Unit> unused$var$, Composer composer, int i) throws MissingTypeConverter {
                Intrinsics.checkNotNullParameter(map, "map");
                Intrinsics.checkNotNullParameter(unused$var$, "$unused$var$");
                composer.startReplaceGroup(-1977326013);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1977326013, i, -1, "expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.<anonymous> (ModifierRegistry.kt:351)");
                }
                TypeConverter<?> typeConverterObtainTypeConverter = TypeConverterProviderImpl.INSTANCE.obtainTypeConverter(Reflection.typeOf(FillMaxHeightParams.class));
                Intrinsics.checkNotNull(typeConverterObtainTypeConverter, "null cannot be cast to non-null type expo.modules.kotlin.records.RecordTypeConverter<T of expo.modules.kotlin.records.RecordTypeConverterKt.recordFromMap>");
                Modifier modifierFillMaxHeight = SizeKt.fillMaxHeight(Modifier.INSTANCE, ((FillMaxHeightParams) RecordTypeConverterKt.recordFromMap(map, (RecordTypeConverter) typeConverterObtainTypeConverter)).getFraction());
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                composer.endReplaceGroup();
                return modifierFillMaxHeight;
            }
        });
        register("width", new Function6<Map<String, ? extends Object>, ComposableScope, AppContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit>, Composer, Integer, Modifier>() { // from class: expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.7
            @Override // kotlin.jvm.functions.Function6
            public /* bridge */ /* synthetic */ Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit> function2, Composer composer, Integer num) {
                return invoke(map, composableScope, appContext, (Function2<? super String, ? super Map<String, ? extends Object>, Unit>) function2, composer, num.intValue());
            }

            public final Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, Unit> unused$var$, Composer composer, int i) throws MissingTypeConverter {
                Intrinsics.checkNotNullParameter(map, "map");
                Intrinsics.checkNotNullParameter(unused$var$, "$unused$var$");
                composer.startReplaceGroup(-1282679006);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1282679006, i, -1, "expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.<anonymous> (ModifierRegistry.kt:356)");
                }
                TypeConverter<?> typeConverterObtainTypeConverter = TypeConverterProviderImpl.INSTANCE.obtainTypeConverter(Reflection.typeOf(WidthParams.class));
                Intrinsics.checkNotNull(typeConverterObtainTypeConverter, "null cannot be cast to non-null type expo.modules.kotlin.records.RecordTypeConverter<T of expo.modules.kotlin.records.RecordTypeConverterKt.recordFromMap>");
                Modifier modifierM983width3ABfNKs = SizeKt.m983width3ABfNKs(Modifier.INSTANCE, Dp.m8892constructorimpl(((WidthParams) RecordTypeConverterKt.recordFromMap(map, (RecordTypeConverter) typeConverterObtainTypeConverter)).getWidth()));
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                composer.endReplaceGroup();
                return modifierM983width3ABfNKs;
            }
        });
        register("height", new Function6<Map<String, ? extends Object>, ComposableScope, AppContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit>, Composer, Integer, Modifier>() { // from class: expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.8
            @Override // kotlin.jvm.functions.Function6
            public /* bridge */ /* synthetic */ Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit> function2, Composer composer, Integer num) {
                return invoke(map, composableScope, appContext, (Function2<? super String, ? super Map<String, ? extends Object>, Unit>) function2, composer, num.intValue());
            }

            public final Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, Unit> unused$var$, Composer composer, int i) throws MissingTypeConverter {
                Intrinsics.checkNotNullParameter(map, "map");
                Intrinsics.checkNotNullParameter(unused$var$, "$unused$var$");
                composer.startReplaceGroup(-588031999);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-588031999, i, -1, "expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.<anonymous> (ModifierRegistry.kt:361)");
                }
                TypeConverter<?> typeConverterObtainTypeConverter = TypeConverterProviderImpl.INSTANCE.obtainTypeConverter(Reflection.typeOf(HeightParams.class));
                Intrinsics.checkNotNull(typeConverterObtainTypeConverter, "null cannot be cast to non-null type expo.modules.kotlin.records.RecordTypeConverter<T of expo.modules.kotlin.records.RecordTypeConverterKt.recordFromMap>");
                Modifier modifierM964height3ABfNKs = SizeKt.m964height3ABfNKs(Modifier.INSTANCE, Dp.m8892constructorimpl(((HeightParams) RecordTypeConverterKt.recordFromMap(map, (RecordTypeConverter) typeConverterObtainTypeConverter)).getHeight()));
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                composer.endReplaceGroup();
                return modifierM964height3ABfNKs;
            }
        });
        register("wrapContentWidth", new Function6<Map<String, ? extends Object>, ComposableScope, AppContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit>, Composer, Integer, Modifier>() { // from class: expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.9
            @Override // kotlin.jvm.functions.Function6
            public /* bridge */ /* synthetic */ Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit> function2, Composer composer, Integer num) {
                return invoke(map, composableScope, appContext, (Function2<? super String, ? super Map<String, ? extends Object>, Unit>) function2, composer, num.intValue());
            }

            public final Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, Unit> unused$var$, Composer composer, int i) throws MissingTypeConverter {
                Modifier modifierWrapContentWidth$default;
                Alignment.Horizontal horizontalAlignment;
                Intrinsics.checkNotNullParameter(map, "map");
                Intrinsics.checkNotNullParameter(unused$var$, "$unused$var$");
                composer.startReplaceGroup(106615008);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(106615008, i, -1, "expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.<anonymous> (ModifierRegistry.kt:366)");
                }
                TypeConverter<?> typeConverterObtainTypeConverter = TypeConverterProviderImpl.INSTANCE.obtainTypeConverter(Reflection.typeOf(WrapContentWidthParams.class));
                Intrinsics.checkNotNull(typeConverterObtainTypeConverter, "null cannot be cast to non-null type expo.modules.kotlin.records.RecordTypeConverter<T of expo.modules.kotlin.records.RecordTypeConverterKt.recordFromMap>");
                AlignmentType alignment = ((WrapContentWidthParams) RecordTypeConverterKt.recordFromMap(map, (RecordTypeConverter) typeConverterObtainTypeConverter)).getAlignment();
                if (alignment == null || (horizontalAlignment = alignment.toHorizontalAlignment()) == null || (modifierWrapContentWidth$default = SizeKt.wrapContentWidth$default(Modifier.INSTANCE, horizontalAlignment, false, 2, null)) == null) {
                    modifierWrapContentWidth$default = SizeKt.wrapContentWidth$default(Modifier.INSTANCE, null, false, 3, null);
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                composer.endReplaceGroup();
                return modifierWrapContentWidth$default;
            }
        });
        register("wrapContentHeight", new Function6<Map<String, ? extends Object>, ComposableScope, AppContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit>, Composer, Integer, Modifier>() { // from class: expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.10
            @Override // kotlin.jvm.functions.Function6
            public /* bridge */ /* synthetic */ Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit> function2, Composer composer, Integer num) {
                return invoke(map, composableScope, appContext, (Function2<? super String, ? super Map<String, ? extends Object>, Unit>) function2, composer, num.intValue());
            }

            public final Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, Unit> unused$var$, Composer composer, int i) throws MissingTypeConverter {
                Modifier modifierWrapContentHeight$default;
                Alignment.Vertical verticalAlignment;
                Intrinsics.checkNotNullParameter(map, "map");
                Intrinsics.checkNotNullParameter(unused$var$, "$unused$var$");
                composer.startReplaceGroup(801262015);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(801262015, i, -1, "expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.<anonymous> (ModifierRegistry.kt:373)");
                }
                TypeConverter<?> typeConverterObtainTypeConverter = TypeConverterProviderImpl.INSTANCE.obtainTypeConverter(Reflection.typeOf(WrapContentHeightParams.class));
                Intrinsics.checkNotNull(typeConverterObtainTypeConverter, "null cannot be cast to non-null type expo.modules.kotlin.records.RecordTypeConverter<T of expo.modules.kotlin.records.RecordTypeConverterKt.recordFromMap>");
                AlignmentType alignment = ((WrapContentHeightParams) RecordTypeConverterKt.recordFromMap(map, (RecordTypeConverter) typeConverterObtainTypeConverter)).getAlignment();
                if (alignment == null || (verticalAlignment = alignment.toVerticalAlignment()) == null || (modifierWrapContentHeight$default = SizeKt.wrapContentHeight$default(Modifier.INSTANCE, verticalAlignment, false, 2, null)) == null) {
                    modifierWrapContentHeight$default = SizeKt.wrapContentHeight$default(Modifier.INSTANCE, null, false, 3, null);
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                composer.endReplaceGroup();
                return modifierWrapContentHeight$default;
            }
        });
        register("imePadding", new Function6<Map<String, ? extends Object>, ComposableScope, AppContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit>, Composer, Integer, Modifier>() { // from class: expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.11
            @Override // kotlin.jvm.functions.Function6
            public /* bridge */ /* synthetic */ Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit> function2, Composer composer, Integer num) {
                return invoke(map, composableScope, appContext, (Function2<? super String, ? super Map<String, ? extends Object>, Unit>) function2, composer, num.intValue());
            }

            public final Modifier invoke(Map<String, ? extends Object> unused$var$, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, Unit> unused$var$2, Composer composer, int i) {
                Intrinsics.checkNotNullParameter(unused$var$, "$unused$var$");
                Intrinsics.checkNotNullParameter(unused$var$2, "$unused$var$");
                composer.startReplaceGroup(523002921);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(523002921, i, -1, "expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.<anonymous> (ModifierRegistry.kt:381)");
                }
                Modifier modifierImePadding = WindowInsetsPadding_androidKt.imePadding(Modifier.INSTANCE);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                composer.endReplaceGroup();
                return modifierImePadding;
            }
        });
        register(TypedValues.Cycle.S_WAVE_OFFSET, new Function6<Map<String, ? extends Object>, ComposableScope, AppContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit>, Composer, Integer, Modifier>() { // from class: expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.12
            @Override // kotlin.jvm.functions.Function6
            public /* bridge */ /* synthetic */ Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit> function2, Composer composer, Integer num) {
                return invoke(map, composableScope, appContext, (Function2<? super String, ? super Map<String, ? extends Object>, Unit>) function2, composer, num.intValue());
            }

            public final Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, Unit> unused$var$, Composer composer, int i) throws MissingTypeConverter {
                Intrinsics.checkNotNullParameter(map, "map");
                Intrinsics.checkNotNullParameter(unused$var$, "$unused$var$");
                composer.startReplaceGroup(1217649928);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1217649928, i, -1, "expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.<anonymous> (ModifierRegistry.kt:386)");
                }
                TypeConverter<?> typeConverterObtainTypeConverter = TypeConverterProviderImpl.INSTANCE.obtainTypeConverter(Reflection.typeOf(OffsetParams.class));
                Intrinsics.checkNotNull(typeConverterObtainTypeConverter, "null cannot be cast to non-null type expo.modules.kotlin.records.RecordTypeConverter<T of expo.modules.kotlin.records.RecordTypeConverterKt.recordFromMap>");
                OffsetParams offsetParams = (OffsetParams) RecordTypeConverterKt.recordFromMap(map, (RecordTypeConverter) typeConverterObtainTypeConverter);
                Modifier modifierM886offsetVpY3zN4 = OffsetKt.m886offsetVpY3zN4(Modifier.INSTANCE, Dp.m8892constructorimpl(offsetParams.getX()), Dp.m8892constructorimpl(offsetParams.getY()));
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                composer.endReplaceGroup();
                return modifierM886offsetVpY3zN4;
            }
        });
        register(AppStateModule.APP_STATE_BACKGROUND, new Function6<Map<String, ? extends Object>, ComposableScope, AppContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit>, Composer, Integer, Modifier>() { // from class: expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.13
            @Override // kotlin.jvm.functions.Function6
            public /* bridge */ /* synthetic */ Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit> function2, Composer composer, Integer num) {
                return invoke(map, composableScope, appContext, (Function2<? super String, ? super Map<String, ? extends Object>, Unit>) function2, composer, num.intValue());
            }

            public final Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, Unit> unused$var$, Composer composer, int i) throws MissingTypeConverter {
                Modifier.Companion companionM301backgroundbw27NRU$default;
                Intrinsics.checkNotNullParameter(map, "map");
                Intrinsics.checkNotNullParameter(unused$var$, "$unused$var$");
                composer.startReplaceGroup(1912296935);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1912296935, i, -1, "expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.<anonymous> (ModifierRegistry.kt:392)");
                }
                TypeConverter<?> typeConverterObtainTypeConverter = TypeConverterProviderImpl.INSTANCE.obtainTypeConverter(Reflection.typeOf(BackgroundParams.class));
                Intrinsics.checkNotNull(typeConverterObtainTypeConverter, "null cannot be cast to non-null type expo.modules.kotlin.records.RecordTypeConverter<T of expo.modules.kotlin.records.RecordTypeConverterKt.recordFromMap>");
                Color color = ((BackgroundParams) RecordTypeConverterKt.recordFromMap(map, (RecordTypeConverter) typeConverterObtainTypeConverter)).getColor();
                if (color == null || (companionM301backgroundbw27NRU$default = BackgroundKt.m301backgroundbw27NRU$default(Modifier.INSTANCE, UtilsKt.getCompose(color), null, 2, null)) == null) {
                    companionM301backgroundbw27NRU$default = Modifier.INSTANCE;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                composer.endReplaceGroup();
                return companionM301backgroundbw27NRU$default;
            }
        });
        register("border", new Function6<Map<String, ? extends Object>, ComposableScope, AppContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit>, Composer, Integer, Modifier>() { // from class: expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.14
            @Override // kotlin.jvm.functions.Function6
            public /* bridge */ /* synthetic */ Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit> function2, Composer composer, Integer num) {
                return invoke(map, composableScope, appContext, (Function2<? super String, ? super Map<String, ? extends Object>, Unit>) function2, composer, num.intValue());
            }

            public final Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, Unit> unused$var$, Composer composer, int i) throws MissingTypeConverter {
                Modifier.Companion companionBorder$default;
                Intrinsics.checkNotNullParameter(map, "map");
                Intrinsics.checkNotNullParameter(unused$var$, "$unused$var$");
                composer.startReplaceGroup(-1688023354);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1688023354, i, -1, "expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.<anonymous> (ModifierRegistry.kt:399)");
                }
                TypeConverter<?> typeConverterObtainTypeConverter = TypeConverterProviderImpl.INSTANCE.obtainTypeConverter(Reflection.typeOf(BorderParams.class));
                Intrinsics.checkNotNull(typeConverterObtainTypeConverter, "null cannot be cast to non-null type expo.modules.kotlin.records.RecordTypeConverter<T of expo.modules.kotlin.records.RecordTypeConverterKt.recordFromMap>");
                BorderParams borderParams = (BorderParams) RecordTypeConverterKt.recordFromMap(map, (RecordTypeConverter) typeConverterObtainTypeConverter);
                Color borderColor = borderParams.getBorderColor();
                if (borderColor == null || (companionBorder$default = BorderKt.border$default(Modifier.INSTANCE, BorderStrokeKt.m334BorderStrokecXLIe8U(Dp.m8892constructorimpl(borderParams.getBorderWidth()), UtilsKt.getCompose(borderColor)), null, 2, null)) == null) {
                    companionBorder$default = Modifier.INSTANCE;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                composer.endReplaceGroup();
                return companionBorder$default;
            }
        });
        register("shadow", new Function6<Map<String, ? extends Object>, ComposableScope, AppContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit>, Composer, Integer, Modifier>() { // from class: expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.15
            @Override // kotlin.jvm.functions.Function6
            public /* bridge */ /* synthetic */ Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit> function2, Composer composer, Integer num) {
                return invoke(map, composableScope, appContext, (Function2<? super String, ? super Map<String, ? extends Object>, Unit>) function2, composer, num.intValue());
            }

            public final Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, Unit> unused$var$, Composer composer, int i) throws MissingTypeConverter {
                Intrinsics.checkNotNullParameter(map, "map");
                Intrinsics.checkNotNullParameter(unused$var$, "$unused$var$");
                composer.startReplaceGroup(-993376347);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-993376347, i, -1, "expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.<anonymous> (ModifierRegistry.kt:406)");
                }
                TypeConverter<?> typeConverterObtainTypeConverter = TypeConverterProviderImpl.INSTANCE.obtainTypeConverter(Reflection.typeOf(ShadowParams.class));
                Intrinsics.checkNotNull(typeConverterObtainTypeConverter, "null cannot be cast to non-null type expo.modules.kotlin.records.RecordTypeConverter<T of expo.modules.kotlin.records.RecordTypeConverterKt.recordFromMap>");
                Modifier modifierM5656shadows4CzXII$default = ShadowKt.m5656shadows4CzXII$default(Modifier.INSTANCE, Dp.m8892constructorimpl(((ShadowParams) RecordTypeConverterKt.recordFromMap(map, (RecordTypeConverter) typeConverterObtainTypeConverter)).getElevation()), null, false, 0L, 0L, 30, null);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                composer.endReplaceGroup();
                return modifierM5656shadows4CzXII$default;
            }
        });
        register("alpha", new Function6<Map<String, ? extends Object>, ComposableScope, AppContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit>, Composer, Integer, Modifier>() { // from class: expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.16
            @Override // kotlin.jvm.functions.Function6
            public /* bridge */ /* synthetic */ Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit> function2, Composer composer, Integer num) {
                return invoke(map, composableScope, appContext, (Function2<? super String, ? super Map<String, ? extends Object>, Unit>) function2, composer, num.intValue());
            }

            public final Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, Unit> unused$var$, Composer composer, int i) throws MissingTypeConverter {
                Intrinsics.checkNotNullParameter(map, "map");
                Intrinsics.checkNotNullParameter(unused$var$, "$unused$var$");
                composer.startReplaceGroup(-298729340);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-298729340, i, -1, "expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.<anonymous> (ModifierRegistry.kt:411)");
                }
                TypeConverter<?> typeConverterObtainTypeConverter = TypeConverterProviderImpl.INSTANCE.obtainTypeConverter(Reflection.typeOf(AlphaParams.class));
                Intrinsics.checkNotNull(typeConverterObtainTypeConverter, "null cannot be cast to non-null type expo.modules.kotlin.records.RecordTypeConverter<T of expo.modules.kotlin.records.RecordTypeConverterKt.recordFromMap>");
                Modifier modifierAlpha = AlphaKt.alpha(Modifier.INSTANCE, ((AlphaParams) RecordTypeConverterKt.recordFromMap(map, (RecordTypeConverter) typeConverterObtainTypeConverter)).getAlpha());
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                composer.endReplaceGroup();
                return modifierAlpha;
            }
        });
        register("blur", new Function6<Map<String, ? extends Object>, ComposableScope, AppContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit>, Composer, Integer, Modifier>() { // from class: expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.17
            @Override // kotlin.jvm.functions.Function6
            public /* bridge */ /* synthetic */ Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit> function2, Composer composer, Integer num) {
                return invoke(map, composableScope, appContext, (Function2<? super String, ? super Map<String, ? extends Object>, Unit>) function2, composer, num.intValue());
            }

            public final Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, Unit> unused$var$, Composer composer, int i) throws MissingTypeConverter {
                Intrinsics.checkNotNullParameter(map, "map");
                Intrinsics.checkNotNullParameter(unused$var$, "$unused$var$");
                composer.startReplaceGroup(395917667);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(395917667, i, -1, "expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.<anonymous> (ModifierRegistry.kt:416)");
                }
                TypeConverter<?> typeConverterObtainTypeConverter = TypeConverterProviderImpl.INSTANCE.obtainTypeConverter(Reflection.typeOf(BlurParams.class));
                Intrinsics.checkNotNull(typeConverterObtainTypeConverter, "null cannot be cast to non-null type expo.modules.kotlin.records.RecordTypeConverter<T of expo.modules.kotlin.records.RecordTypeConverterKt.recordFromMap>");
                Modifier modifierM5581blurF8QBwvs$default = BlurKt.m5581blurF8QBwvs$default(Modifier.INSTANCE, Dp.m8892constructorimpl(((BlurParams) RecordTypeConverterKt.recordFromMap(map, (RecordTypeConverter) typeConverterObtainTypeConverter)).getRadius()), null, 2, null);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                composer.endReplaceGroup();
                return modifierM5581blurF8QBwvs$default;
            }
        });
        register("rotate", new Function6<Map<String, ? extends Object>, ComposableScope, AppContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit>, Composer, Integer, Modifier>() { // from class: expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.18
            @Override // kotlin.jvm.functions.Function6
            public /* bridge */ /* synthetic */ Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit> function2, Composer composer, Integer num) {
                return invoke(map, composableScope, appContext, (Function2<? super String, ? super Map<String, ? extends Object>, Unit>) function2, composer, num.intValue());
            }

            public final Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, Unit> unused$var$, Composer composer, int i) throws MissingTypeConverter {
                Intrinsics.checkNotNullParameter(map, "map");
                Intrinsics.checkNotNullParameter(unused$var$, "$unused$var$");
                composer.startReplaceGroup(1090564674);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1090564674, i, -1, "expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.<anonymous> (ModifierRegistry.kt:422)");
                }
                TypeConverter<?> typeConverterObtainTypeConverter = TypeConverterProviderImpl.INSTANCE.obtainTypeConverter(Reflection.typeOf(RotateParams.class));
                Intrinsics.checkNotNull(typeConverterObtainTypeConverter, "null cannot be cast to non-null type expo.modules.kotlin.records.RecordTypeConverter<T of expo.modules.kotlin.records.RecordTypeConverterKt.recordFromMap>");
                Modifier modifierRotate = RotateKt.rotate(Modifier.INSTANCE, ((RotateParams) RecordTypeConverterKt.recordFromMap(map, (RecordTypeConverter) typeConverterObtainTypeConverter)).getDegrees());
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                composer.endReplaceGroup();
                return modifierRotate;
            }
        });
        register("graphicsLayer", AnonymousClass19.INSTANCE);
        register(ViewProps.Z_INDEX, new Function6<Map<String, ? extends Object>, ComposableScope, AppContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit>, Composer, Integer, Modifier>() { // from class: expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.20
            @Override // kotlin.jvm.functions.Function6
            public /* bridge */ /* synthetic */ Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit> function2, Composer composer, Integer num) {
                return invoke(map, composableScope, appContext, (Function2<? super String, ? super Map<String, ? extends Object>, Unit>) function2, composer, num.intValue());
            }

            public final Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, Unit> unused$var$, Composer composer, int i) throws MissingTypeConverter {
                Intrinsics.checkNotNullParameter(map, "map");
                Intrinsics.checkNotNullParameter(unused$var$, "$unused$var$");
                composer.startReplaceGroup(-1815108608);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1815108608, i, -1, "expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.<anonymous> (ModifierRegistry.kt:469)");
                }
                TypeConverter<?> typeConverterObtainTypeConverter = TypeConverterProviderImpl.INSTANCE.obtainTypeConverter(Reflection.typeOf(ZIndexParams.class));
                Intrinsics.checkNotNull(typeConverterObtainTypeConverter, "null cannot be cast to non-null type expo.modules.kotlin.records.RecordTypeConverter<T of expo.modules.kotlin.records.RecordTypeConverterKt.recordFromMap>");
                Modifier modifierZIndex = ZIndexModifierKt.zIndex(Modifier.INSTANCE, ((ZIndexParams) RecordTypeConverterKt.recordFromMap(map, (RecordTypeConverter) typeConverterObtainTypeConverter)).getIndex());
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                composer.endReplaceGroup();
                return modifierZIndex;
            }
        });
        register("animateContentSize", new Function6<Map<String, ? extends Object>, ComposableScope, AppContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit>, Composer, Integer, Modifier>() { // from class: expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.21
            @Override // kotlin.jvm.functions.Function6
            public /* bridge */ /* synthetic */ Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit> function2, Composer composer, Integer num) {
                return invoke(map, composableScope, appContext, (Function2<? super String, ? super Map<String, ? extends Object>, Unit>) function2, composer, num.intValue());
            }

            public final Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, Unit> unused$var$, Composer composer, int i) throws MissingTypeConverter {
                Intrinsics.checkNotNullParameter(map, "map");
                Intrinsics.checkNotNullParameter(unused$var$, "$unused$var$");
                composer.startReplaceGroup(582223658);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(582223658, i, -1, "expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.<anonymous> (ModifierRegistry.kt:475)");
                }
                TypeConverter<?> typeConverterObtainTypeConverter = TypeConverterProviderImpl.INSTANCE.obtainTypeConverter(Reflection.typeOf(AnimateContentSizeParams.class));
                Intrinsics.checkNotNull(typeConverterObtainTypeConverter, "null cannot be cast to non-null type expo.modules.kotlin.records.RecordTypeConverter<T of expo.modules.kotlin.records.RecordTypeConverterKt.recordFromMap>");
                AnimateContentSizeParams animateContentSizeParams = (AnimateContentSizeParams) RecordTypeConverterKt.recordFromMap(map, (RecordTypeConverter) typeConverterObtainTypeConverter);
                Modifier modifierAnimateContentSize$default = AnimationModifierKt.animateContentSize$default(Modifier.INSTANCE, AnimationSpecKt.spring$default(animateContentSizeParams.getDampingRatio(), animateContentSizeParams.getStiffness(), null, 4, null), null, 2, null);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                composer.endReplaceGroup();
                return modifierAnimateContentSize$default;
            }
        });
        register("weight", new Function6<Map<String, ? extends Object>, ComposableScope, AppContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit>, Composer, Integer, Modifier>() { // from class: expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.22
            @Override // kotlin.jvm.functions.Function6
            public /* bridge */ /* synthetic */ Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit> function2, Composer composer, Integer num) {
                return invoke(map, composableScope, appContext, (Function2<? super String, ? super Map<String, ? extends Object>, Unit>) function2, composer, num.intValue());
            }

            public final Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, Unit> unused$var$, Composer composer, int i) throws MissingTypeConverter {
                Modifier.Companion companionWeight$default;
                ColumnScope columnScope;
                RowScope rowScope;
                Intrinsics.checkNotNullParameter(map, "map");
                Intrinsics.checkNotNullParameter(unused$var$, "$unused$var$");
                composer.startReplaceGroup(1276870665);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1276870665, i, -1, "expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.<anonymous> (ModifierRegistry.kt:483)");
                }
                TypeConverter<?> typeConverterObtainTypeConverter = TypeConverterProviderImpl.INSTANCE.obtainTypeConverter(Reflection.typeOf(WeightParams.class));
                Intrinsics.checkNotNull(typeConverterObtainTypeConverter, "null cannot be cast to non-null type expo.modules.kotlin.records.RecordTypeConverter<T of expo.modules.kotlin.records.RecordTypeConverterKt.recordFromMap>");
                WeightParams weightParams = (WeightParams) RecordTypeConverterKt.recordFromMap(map, (RecordTypeConverter) typeConverterObtainTypeConverter);
                if (composableScope == null || (rowScope = composableScope.getRowScope()) == null || (companionWeight$default = RowScope.weight$default(rowScope, Modifier.INSTANCE, weightParams.getWeight(), false, 2, null)) == null) {
                    if (composableScope != null && (columnScope = composableScope.getColumnScope()) != null) {
                        companionWeight$default = ColumnScope.weight$default(columnScope, Modifier.INSTANCE, weightParams.getWeight(), false, 2, null);
                    } else {
                        companionWeight$default = Modifier.INSTANCE;
                    }
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                composer.endReplaceGroup();
                return companionWeight$default;
            }
        });
        register("align", new Function6<Map<String, ? extends Object>, ComposableScope, AppContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit>, Composer, Integer, Modifier>() { // from class: expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.23
            @Override // kotlin.jvm.functions.Function6
            public /* bridge */ /* synthetic */ Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit> function2, Composer composer, Integer num) {
                return invoke(map, composableScope, appContext, (Function2<? super String, ? super Map<String, ? extends Object>, Unit>) function2, composer, num.intValue());
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0056  */
            /* JADX WARN: Code duplicated, block: B:24:0x0073  */
            /* JADX WARN: Code duplicated, block: B:26:0x0076  */
            /* JADX WARN: Code duplicated, block: B:35:0x0095  */
            /* JADX WARN: Code duplicated, block: B:36:0x009b  */
            public final Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, Unit> unused$var$, Composer composer, int i) throws MissingTypeConverter {
                Modifier.Companion companionAlign;
                ColumnScope columnScope;
                AlignmentType alignment;
                Alignment.Horizontal horizontalAlignment;
                RowScope rowScope;
                AlignmentType alignment2;
                Alignment.Vertical verticalAlignment;
                BoxScope boxScope;
                Alignment alignment3;
                Intrinsics.checkNotNullParameter(map, "map");
                Intrinsics.checkNotNullParameter(unused$var$, "$unused$var$");
                composer.startReplaceGroup(1971517672);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1971517672, i, -1, "expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.<anonymous> (ModifierRegistry.kt:492)");
                }
                TypeConverter<?> typeConverterObtainTypeConverter = TypeConverterProviderImpl.INSTANCE.obtainTypeConverter(Reflection.typeOf(AlignParams.class));
                Intrinsics.checkNotNull(typeConverterObtainTypeConverter, "null cannot be cast to non-null type expo.modules.kotlin.records.RecordTypeConverter<T of expo.modules.kotlin.records.RecordTypeConverterKt.recordFromMap>");
                AlignParams alignParams = (AlignParams) RecordTypeConverterKt.recordFromMap(map, (RecordTypeConverter) typeConverterObtainTypeConverter);
                Modifier modifierAlign = null;
                if (composableScope == null || (boxScope = composableScope.getBoxScope()) == null) {
                    if (composableScope != null || (rowScope = composableScope.getRowScope()) == null || (alignment2 = alignParams.getAlignment()) == null || (verticalAlignment = alignment2.toVerticalAlignment()) == null) {
                        companionAlign = null;
                    } else {
                        companionAlign = rowScope.align(Modifier.INSTANCE, verticalAlignment);
                    }
                    if (companionAlign == null) {
                        if (composableScope != null && (columnScope = composableScope.getColumnScope()) != null && (alignment = alignParams.getAlignment()) != null && (horizontalAlignment = alignment.toHorizontalAlignment()) != null) {
                            modifierAlign = columnScope.align(Modifier.INSTANCE, horizontalAlignment);
                        }
                        if (modifierAlign == null) {
                            companionAlign = Modifier.INSTANCE;
                        } else {
                            companionAlign = modifierAlign;
                        }
                    }
                } else {
                    AlignmentType alignment4 = alignParams.getAlignment();
                    companionAlign = (alignment4 == null || (alignment3 = alignment4.toAlignment()) == null) ? null : boxScope.align(Modifier.INSTANCE, alignment3);
                    if (companionAlign == null) {
                        if (composableScope != null) {
                            companionAlign = null;
                        } else {
                            companionAlign = null;
                        }
                        if (companionAlign == null) {
                            if (composableScope != null) {
                                modifierAlign = columnScope.align(Modifier.INSTANCE, horizontalAlignment);
                            }
                            if (modifierAlign == null) {
                                companionAlign = Modifier.INSTANCE;
                            } else {
                                companionAlign = modifierAlign;
                            }
                        }
                    }
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                composer.endReplaceGroup();
                return companionAlign;
            }
        });
        register("matchParentSize", new Function6<Map<String, ? extends Object>, ComposableScope, AppContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit>, Composer, Integer, Modifier>() { // from class: expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.24
            @Override // kotlin.jvm.functions.Function6
            public /* bridge */ /* synthetic */ Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit> function2, Composer composer, Integer num) {
                return invoke(map, composableScope, appContext, (Function2<? super String, ? super Map<String, ? extends Object>, Unit>) function2, composer, num.intValue());
            }

            public final Modifier invoke(Map<String, ? extends Object> unused$var$, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, Unit> unused$var$2, Composer composer, int i) {
                Modifier.Companion companionMatchParentSize;
                BoxScope boxScope;
                Intrinsics.checkNotNullParameter(unused$var$, "$unused$var$");
                Intrinsics.checkNotNullParameter(unused$var$2, "$unused$var$");
                composer.startReplaceGroup(-1628802617);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1628802617, i, -1, "expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.<anonymous> (ModifierRegistry.kt:503)");
                }
                if (composableScope == null || (boxScope = composableScope.getBoxScope()) == null || (companionMatchParentSize = boxScope.matchParentSize(Modifier.INSTANCE)) == null) {
                    companionMatchParentSize = Modifier.INSTANCE;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                composer.endReplaceGroup();
                return companionMatchParentSize;
            }
        });
        register("testID", new Function6<Map<String, ? extends Object>, ComposableScope, AppContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit>, Composer, Integer, Modifier>() { // from class: expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.25
            @Override // kotlin.jvm.functions.Function6
            public /* bridge */ /* synthetic */ Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit> function2, Composer composer, Integer num) {
                return invoke(map, composableScope, appContext, (Function2<? super String, ? super Map<String, ? extends Object>, Unit>) function2, composer, num.intValue());
            }

            public final Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, Unit> unused$var$, Composer composer, int i) throws MissingTypeConverter {
                Modifier.Companion companionApplyTestTag;
                Intrinsics.checkNotNullParameter(map, "map");
                Intrinsics.checkNotNullParameter(unused$var$, "$unused$var$");
                composer.startReplaceGroup(-934155610);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-934155610, i, -1, "expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.<anonymous> (ModifierRegistry.kt:510)");
                }
                TypeConverter<?> typeConverterObtainTypeConverter = TypeConverterProviderImpl.INSTANCE.obtainTypeConverter(Reflection.typeOf(TestIDParams.class));
                Intrinsics.checkNotNull(typeConverterObtainTypeConverter, "null cannot be cast to non-null type expo.modules.kotlin.records.RecordTypeConverter<T of expo.modules.kotlin.records.RecordTypeConverterKt.recordFromMap>");
                String testID = ((TestIDParams) RecordTypeConverterKt.recordFromMap(map, (RecordTypeConverter) typeConverterObtainTypeConverter)).getTestID();
                if (testID == null || (companionApplyTestTag = ModifiersKt.applyTestTag(Modifier.INSTANCE, testID)) == null) {
                    companionApplyTestTag = Modifier.INSTANCE;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                composer.endReplaceGroup();
                return companionApplyTestTag;
            }
        });
        register("clip", new Function6<Map<String, ? extends Object>, ComposableScope, AppContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit>, Composer, Integer, Modifier>() { // from class: expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.26
            @Override // kotlin.jvm.functions.Function6
            public /* bridge */ /* synthetic */ Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit> function2, Composer composer, Integer num) {
                return invoke(map, composableScope, appContext, (Function2<? super String, ? super Map<String, ? extends Object>, Unit>) function2, composer, num.intValue());
            }

            public final Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, Unit> unused$var$, Composer composer, int i) throws MissingTypeConverter {
                Shape shapeResolveShape;
                Intrinsics.checkNotNullParameter(map, "map");
                Intrinsics.checkNotNullParameter(unused$var$, "$unused$var$");
                composer.startReplaceGroup(-239508603);
                ComposerKt.sourceInformation(composer, "C*519@16592L19:ModifierRegistry.kt#v15e7d");
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-239508603, i, -1, "expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.<anonymous> (ModifierRegistry.kt:517)");
                }
                TypeConverter<?> typeConverterObtainTypeConverter = TypeConverterProviderImpl.INSTANCE.obtainTypeConverter(Reflection.typeOf(ClipParams.class));
                Intrinsics.checkNotNull(typeConverterObtainTypeConverter, "null cannot be cast to non-null type expo.modules.kotlin.records.RecordTypeConverter<T of expo.modules.kotlin.records.RecordTypeConverterKt.recordFromMap>");
                BuiltinShapeRecord shape = ((ClipParams) RecordTypeConverterKt.recordFromMap(map, (RecordTypeConverter) typeConverterObtainTypeConverter)).getShape();
                Modifier.Companion companionClip = null;
                if (shape != null && (shapeResolveShape = ModifierRegistry.INSTANCE.resolveShape(shape, composer, 0)) != null) {
                    companionClip = ClipKt.clip(Modifier.INSTANCE, shapeResolveShape);
                }
                if (companionClip == null) {
                    companionClip = Modifier.INSTANCE;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                composer.endReplaceGroup();
                return companionClip;
            }
        });
        register("clickable", AnonymousClass27.INSTANCE);
        register("selectable", AnonymousClass28.INSTANCE);
        register("selectableGroup", new Function6<Map<String, ? extends Object>, ComposableScope, AppContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit>, Composer, Integer, Modifier>() { // from class: expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.29
            @Override // kotlin.jvm.functions.Function6
            public /* bridge */ /* synthetic */ Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit> function2, Composer composer, Integer num) {
                return invoke(map, composableScope, appContext, (Function2<? super String, ? super Map<String, ? extends Object>, Unit>) function2, composer, num.intValue());
            }

            public final Modifier invoke(Map<String, ? extends Object> unused$var$, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, Unit> unused$var$2, Composer composer, int i) {
                Intrinsics.checkNotNullParameter(unused$var$, "$unused$var$");
                Intrinsics.checkNotNullParameter(unused$var$2, "$unused$var$");
                composer.startReplaceGroup(1844432418);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1844432418, i, -1, "expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.<anonymous> (ModifierRegistry.kt:555)");
                }
                Modifier modifierSelectableGroup = SelectableGroupKt.selectableGroup(Modifier.INSTANCE);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                composer.endReplaceGroup();
                return modifierSelectableGroup;
            }
        });
        register("toggleable", AnonymousClass30.INSTANCE);
        register("menuAnchor", new Function6<Map<String, ? extends Object>, ComposableScope, AppContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit>, Composer, Integer, Modifier>() { // from class: expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.31

            /* JADX INFO: renamed from: expo.modules.ui.ModifierRegistry$registerBuiltInModifiers$31$WhenMappings */
            /* JADX INFO: compiled from: ModifierRegistry.kt */
            @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
            public /* synthetic */ class WhenMappings {
                public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                static {
                    int[] iArr = new int[MenuAnchorType.values().length];
                    try {
                        iArr[MenuAnchorType.PRIMARY_NOT_EDITABLE.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    $EnumSwitchMapping$0 = iArr;
                }
            }

            @Override // kotlin.jvm.functions.Function6
            public /* bridge */ /* synthetic */ Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit> function2, Composer composer, Integer num) {
                return invoke(map, composableScope, appContext, (Function2<? super String, ? super Map<String, ? extends Object>, Unit>) function2, composer, num.intValue());
            }

            public final Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, Unit> unused$var$, Composer composer, int i) throws MissingTypeConverter {
                Intrinsics.checkNotNullParameter(map, "map");
                Intrinsics.checkNotNullParameter(unused$var$, "$unused$var$");
                composer.startReplaceGroup(641444395);
                ComposerKt.sourceInformation(composer, "C576@18475L7:ModifierRegistry.kt#v15e7d");
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(641444395, i, -1, "expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.<anonymous> (ModifierRegistry.kt:576)");
                }
                ProvidableCompositionLocal<ExposedDropdownMenuBoxScope> localExposedDropdownMenuBoxScope = ExposedDropdownMenuBoxComposableScopeKt.getLocalExposedDropdownMenuBoxScope();
                ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
                Object objConsume = composer.consume(localExposedDropdownMenuBoxScope);
                ComposerKt.sourceInformationMarkerEnd(composer);
                ExposedDropdownMenuBoxScope exposedDropdownMenuBoxScope = (ExposedDropdownMenuBoxScope) objConsume;
                if (exposedDropdownMenuBoxScope == null) {
                    throw new IllegalStateException("menuAnchor modifier can only be used inside ExposedDropdownMenuBox".toString());
                }
                TypeConverter<?> typeConverterObtainTypeConverter = TypeConverterProviderImpl.INSTANCE.obtainTypeConverter(Reflection.typeOf(MenuAnchorParams.class));
                Intrinsics.checkNotNull(typeConverterObtainTypeConverter, "null cannot be cast to non-null type expo.modules.kotlin.records.RecordTypeConverter<T of expo.modules.kotlin.records.RecordTypeConverterKt.recordFromMap>");
                MenuAnchorParams menuAnchorParams = (MenuAnchorParams) RecordTypeConverterKt.recordFromMap(map, (RecordTypeConverter) typeConverterObtainTypeConverter);
                Modifier.Companion companion = Modifier.INSTANCE;
                if (WhenMappings.$EnumSwitchMapping$0[menuAnchorParams.getType().ordinal()] == 1) {
                    Modifier modifierMo2576menuAnchor2Hz36ac = exposedDropdownMenuBoxScope.mo2576menuAnchor2Hz36ac(companion, ExposedDropdownMenuAnchorType.INSTANCE.m2569getPrimaryNotEditableoYjWRB4(), menuAnchorParams.getEnabled());
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    composer.endReplaceGroup();
                    return modifierMo2576menuAnchor2Hz36ac;
                }
                throw new NoWhenBranchMatchedException();
            }
        });
    }

    /* JADX INFO: renamed from: expo.modules.ui.ModifierRegistry$registerBuiltInModifiers$19, reason: invalid class name */
    /* JADX INFO: compiled from: ModifierRegistry.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    static final class AnonymousClass19 implements Function6<Map<String, ? extends Object>, ComposableScope, AppContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit>, Composer, Integer, Modifier> {
        public static final AnonymousClass19 INSTANCE = new AnonymousClass19();

        /* JADX INFO: renamed from: expo.modules.ui.ModifierRegistry$registerBuiltInModifiers$19$WhenMappings */
        /* JADX INFO: compiled from: ModifierRegistry.kt */
        @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[CompositingStrategyType.values().length];
                try {
                    iArr[CompositingStrategyType.OFFSCREEN.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[CompositingStrategyType.MODULATE.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        AnonymousClass19() {
        }

        @Override // kotlin.jvm.functions.Function6
        public /* bridge */ /* synthetic */ Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit> function2, Composer composer, Integer num) {
            return invoke(map, composableScope, appContext, (Function2<? super String, ? super Map<String, ? extends Object>, Unit>) function2, composer, num.intValue());
        }

        public final Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, Unit> unused$var$, Composer composer, int i) throws MissingTypeConverter {
            int iM6151getOffscreenNrFUSI;
            Intrinsics.checkNotNullParameter(map, "map");
            Intrinsics.checkNotNullParameter(unused$var$, "$unused$var$");
            composer.startReplaceGroup(1785211681);
            ComposerKt.sourceInformation(composer, "C427@12994L39,428@13056L39,429@13118L39,430@13177L36,431@13233L36,432@13291L35,433@13352L42,434@13420L42,435@13491L45,446@14032L7,448@14078L795:ModifierRegistry.kt#v15e7d");
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1785211681, i, -1, "expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.<anonymous> (ModifierRegistry.kt:427)");
            }
            int i2 = (i & 14) | 432;
            final float fResolveAnimatable = AnimatableFloatKt.resolveAnimatable(map, "rotationX", 0.0f, composer, i2);
            final float fResolveAnimatable2 = AnimatableFloatKt.resolveAnimatable(map, "rotationY", 0.0f, composer, i2);
            final float fResolveAnimatable3 = AnimatableFloatKt.resolveAnimatable(map, "rotationZ", 0.0f, composer, i2);
            final float fResolveAnimatable4 = AnimatableFloatKt.resolveAnimatable(map, "scaleX", 1.0f, composer, i2);
            final float fResolveAnimatable5 = AnimatableFloatKt.resolveAnimatable(map, "scaleY", 1.0f, composer, i2);
            final float fResolveAnimatable6 = AnimatableFloatKt.resolveAnimatable(map, "alpha", 1.0f, composer, i2);
            final float fResolveAnimatable7 = AnimatableFloatKt.resolveAnimatable(map, "translationX", 0.0f, composer, i2);
            final float fResolveAnimatable8 = AnimatableFloatKt.resolveAnimatable(map, "translationY", 0.0f, composer, i2);
            final float fResolveAnimatable9 = AnimatableFloatKt.resolveAnimatable(map, "shadowElevation", 0.0f, composer, i2);
            TypeConverter<?> typeConverterObtainTypeConverter = TypeConverterProviderImpl.INSTANCE.obtainTypeConverter(Reflection.typeOf(GraphicsLayerParams.class));
            Intrinsics.checkNotNull(typeConverterObtainTypeConverter, "null cannot be cast to non-null type expo.modules.kotlin.records.RecordTypeConverter<T of expo.modules.kotlin.records.RecordTypeConverterKt.recordFromMap>");
            final GraphicsLayerParams graphicsLayerParams = (GraphicsLayerParams) RecordTypeConverterKt.recordFromMap(map, (RecordTypeConverter) typeConverterObtainTypeConverter);
            BuiltinShapeRecord shape = graphicsLayerParams.getShape();
            composer.startReplaceGroup(1896497753);
            ComposerKt.sourceInformation(composer, "*439@13691L16");
            Shape shapeResolveShape = shape == null ? null : ModifierRegistry.INSTANCE.resolveShape(shape, composer, 0);
            composer.endReplaceGroup();
            if (shapeResolveShape == null) {
                shapeResolveShape = RectangleShapeKt.getRectangleShape();
            }
            CompositingStrategyType compositingStrategy = graphicsLayerParams.getCompositingStrategy();
            int i3 = compositingStrategy != null ? WhenMappings.$EnumSwitchMapping$0[compositingStrategy.ordinal()] : -1;
            if (i3 == 1) {
                iM6151getOffscreenNrFUSI = CompositingStrategy.INSTANCE.m6151getOffscreenNrFUSI();
            } else if (i3 == 2) {
                iM6151getOffscreenNrFUSI = CompositingStrategy.INSTANCE.m6150getModulateAlphaNrFUSI();
            } else {
                iM6151getOffscreenNrFUSI = CompositingStrategy.INSTANCE.m6149getAutoNrFUSI();
            }
            ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
            ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
            Object objConsume = composer.consume(localDensity);
            ComposerKt.sourceInformationMarkerEnd(composer);
            final float density = ((Density) objConsume).getDensity();
            Modifier.Companion companion = Modifier.INSTANCE;
            composer.startReplaceGroup(-1224400529);
            ComposerKt.sourceInformation(composer, "CC(remember):ModifierRegistry.kt#9igjgp");
            boolean zChanged = composer.changed(fResolveAnimatable) | composer.changed(fResolveAnimatable2) | composer.changed(fResolveAnimatable3) | composer.changed(fResolveAnimatable4) | composer.changed(fResolveAnimatable5) | composer.changed(fResolveAnimatable6) | composer.changed(fResolveAnimatable7) | composer.changed(density) | composer.changed(fResolveAnimatable8) | composer.changedInstance(graphicsLayerParams) | composer.changed(fResolveAnimatable9) | composer.changed(shapeResolveShape) | composer.changed(iM6151getOffscreenNrFUSI);
            Object objRememberedValue = composer.rememberedValue();
            if (zChanged || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                final Shape shape2 = shapeResolveShape;
                final int i4 = iM6151getOffscreenNrFUSI;
                Object obj = new Function1() { // from class: expo.modules.ui.ModifierRegistry$registerBuiltInModifiers$19$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        return ModifierRegistry.AnonymousClass19.invoke$lambda$4$lambda$3(fResolveAnimatable, fResolveAnimatable2, fResolveAnimatable3, fResolveAnimatable4, fResolveAnimatable5, fResolveAnimatable6, fResolveAnimatable7, density, fResolveAnimatable8, graphicsLayerParams, fResolveAnimatable9, shape2, i4, (GraphicsLayerScope) obj2);
                    }
                };
                composer.updateRememberedValue(obj);
                objRememberedValue = obj;
            }
            composer.endReplaceGroup();
            Modifier modifierGraphicsLayer = GraphicsLayerModifierKt.graphicsLayer(companion, (Function1) objRememberedValue);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composer.endReplaceGroup();
            return modifierGraphicsLayer;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invoke$lambda$4$lambda$3(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, GraphicsLayerParams graphicsLayerParams, float f10, Shape shape, int i, GraphicsLayerScope graphicsLayer) {
            Intrinsics.checkNotNullParameter(graphicsLayer, "$this$graphicsLayer");
            graphicsLayer.setRotationX(f);
            graphicsLayer.setRotationY(f2);
            graphicsLayer.setRotationZ(f3);
            graphicsLayer.setScaleX(f4);
            graphicsLayer.setScaleY(f5);
            graphicsLayer.setAlpha(f6);
            graphicsLayer.setTranslationX(f7 * f8);
            graphicsLayer.setTranslationY(f9 * f8);
            graphicsLayer.setCameraDistance(graphicsLayerParams.getCameraDistance() * f8);
            graphicsLayer.setShadowElevation(f10 * f8);
            graphicsLayer.mo6261setTransformOrigin__ExYCQ(TransformOriginKt.TransformOrigin(graphicsLayerParams.getTransformOriginX(), graphicsLayerParams.getTransformOriginY()));
            graphicsLayer.setClip(graphicsLayerParams.getClip());
            graphicsLayer.setShape(shape);
            graphicsLayer.mo6259setCompositingStrategyaDBOjCE(i);
            Color ambientShadowColor = graphicsLayerParams.getAmbientShadowColor();
            if (ambientShadowColor != null) {
                graphicsLayer.mo6257setAmbientShadowColor8_81llA(UtilsKt.getCompose(ambientShadowColor));
            }
            Color spotShadowColor = graphicsLayerParams.getSpotShadowColor();
            if (spotShadowColor != null) {
                graphicsLayer.mo6260setSpotShadowColor8_81llA(UtilsKt.getCompose(spotShadowColor));
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: expo.modules.ui.ModifierRegistry$registerBuiltInModifiers$27, reason: invalid class name */
    /* JADX INFO: compiled from: ModifierRegistry.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    static final class AnonymousClass27 implements Function6<Map<String, ? extends Object>, ComposableScope, AppContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit>, Composer, Integer, Modifier> {
        public static final AnonymousClass27 INSTANCE = new AnonymousClass27();

        AnonymousClass27() {
        }

        @Override // kotlin.jvm.functions.Function6
        public /* bridge */ /* synthetic */ Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit> function2, Composer composer, Integer num) {
            return invoke(map, composableScope, appContext, (Function2<? super String, ? super Map<String, ? extends Object>, Unit>) function2, composer, num.intValue());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invoke$lambda$1$lambda$0(Function2 function2) {
            function2.invoke("clickable", MapsKt.emptyMap());
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invoke$lambda$3$lambda$2(Function2 function2) {
            function2.invoke("clickable", MapsKt.emptyMap());
            return Unit.INSTANCE;
        }

        public final Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, final Function2<? super String, ? super Map<String, ? extends Object>, Unit> eventDispatcher, Composer composer, int i) throws MissingTypeConverter {
            boolean z;
            Modifier modifierM340clickableO2vRcR0$default;
            Intrinsics.checkNotNullParameter(map, "map");
            Intrinsics.checkNotNullParameter(eventDispatcher, "eventDispatcher");
            composer.startReplaceGroup(455138404);
            ComposerKt.sourceInformation(composer, "CP(1):ModifierRegistry.kt#v15e7d");
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(455138404, i, -1, "expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.<anonymous> (ModifierRegistry.kt:524)");
            }
            TypeConverter<?> typeConverterObtainTypeConverter = TypeConverterProviderImpl.INSTANCE.obtainTypeConverter(Reflection.typeOf(ClickableParams.class));
            Intrinsics.checkNotNull(typeConverterObtainTypeConverter, "null cannot be cast to non-null type expo.modules.kotlin.records.RecordTypeConverter<T of expo.modules.kotlin.records.RecordTypeConverterKt.recordFromMap>");
            if (((ClickableParams) RecordTypeConverterKt.recordFromMap(map, (RecordTypeConverter) typeConverterObtainTypeConverter)).getIndication()) {
                composer.startReplaceGroup(-183441765);
                ComposerKt.sourceInformation(composer, "526@16837L62");
                Modifier.Companion companion = Modifier.INSTANCE;
                composer.startReplaceGroup(5004770);
                ComposerKt.sourceInformation(composer, "CC(remember):ModifierRegistry.kt#9igjgp");
                z = (((i & 7168) ^ 3072) > 2048 && composer.changed(eventDispatcher)) || (i & 3072) == 2048;
                Object objRememberedValue = composer.rememberedValue();
                if (z || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                    objRememberedValue = new Function0() { // from class: expo.modules.ui.ModifierRegistry$registerBuiltInModifiers$27$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return ModifierRegistry.AnonymousClass27.invoke$lambda$1$lambda$0(eventDispatcher);
                        }
                    };
                    composer.updateRememberedValue(objRememberedValue);
                }
                composer.endReplaceGroup();
                modifierM340clickableO2vRcR0$default = ClickableKt.m344clickableoSLSa3U$default(companion, false, null, null, null, (Function0) objRememberedValue, 15, null);
                composer.endReplaceGroup();
            } else {
                composer.startReplaceGroup(-183335280);
                ComposerKt.sourceInformation(composer, "533@17017L62");
                Modifier.Companion companion2 = Modifier.INSTANCE;
                composer.startReplaceGroup(5004770);
                ComposerKt.sourceInformation(composer, "CC(remember):ModifierRegistry.kt#9igjgp");
                z = (((i & 7168) ^ 3072) > 2048 && composer.changed(eventDispatcher)) || (i & 3072) == 2048;
                Object objRememberedValue2 = composer.rememberedValue();
                if (z || objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                    objRememberedValue2 = new Function0() { // from class: expo.modules.ui.ModifierRegistry$registerBuiltInModifiers$27$$ExternalSyntheticLambda1
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return ModifierRegistry.AnonymousClass27.invoke$lambda$3$lambda$2(eventDispatcher);
                        }
                    };
                    composer.updateRememberedValue(objRememberedValue2);
                }
                composer.endReplaceGroup();
                modifierM340clickableO2vRcR0$default = ClickableKt.m340clickableO2vRcR0$default(companion2, null, null, false, null, null, (Function0) objRememberedValue2, 28, null);
                composer.endReplaceGroup();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composer.endReplaceGroup();
            return modifierM340clickableO2vRcR0$default;
        }
    }

    /* JADX INFO: renamed from: expo.modules.ui.ModifierRegistry$registerBuiltInModifiers$28, reason: invalid class name */
    /* JADX INFO: compiled from: ModifierRegistry.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    static final class AnonymousClass28 implements Function6<Map<String, ? extends Object>, ComposableScope, AppContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit>, Composer, Integer, Modifier> {
        public static final AnonymousClass28 INSTANCE = new AnonymousClass28();

        AnonymousClass28() {
        }

        @Override // kotlin.jvm.functions.Function6
        public /* bridge */ /* synthetic */ Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit> function2, Composer composer, Integer num) {
            return invoke(map, composableScope, appContext, (Function2<? super String, ? super Map<String, ? extends Object>, Unit>) function2, composer, num.intValue());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invoke$lambda$1$lambda$0(Function2 function2) {
            function2.invoke("selectable", MapsKt.emptyMap());
            return Unit.INSTANCE;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code duplicated, block: B:26:0x00a1  */
        public final Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, final Function2<? super String, ? super Map<String, ? extends Object>, Unit> eventDispatcher, Composer composer, int i) throws MissingTypeConverter {
            Role roleM8069boximpl;
            Intrinsics.checkNotNullParameter(map, "map");
            Intrinsics.checkNotNullParameter(eventDispatcher, "eventDispatcher");
            composer.startReplaceGroup(1149785411);
            ComposerKt.sourceInformation(composer, "CP(1)550@17625L45:ModifierRegistry.kt#v15e7d");
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1149785411, i, -1, "expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.<anonymous> (ModifierRegistry.kt:540)");
            }
            TypeConverter<?> typeConverterObtainTypeConverter = TypeConverterProviderImpl.INSTANCE.obtainTypeConverter(Reflection.typeOf(SelectableParams.class));
            Intrinsics.checkNotNull(typeConverterObtainTypeConverter, "null cannot be cast to non-null type expo.modules.kotlin.records.RecordTypeConverter<T of expo.modules.kotlin.records.RecordTypeConverterKt.recordFromMap>");
            SelectableParams selectableParams = (SelectableParams) RecordTypeConverterKt.recordFromMap(map, (RecordTypeConverter) typeConverterObtainTypeConverter);
            Modifier.Companion companion = Modifier.INSTANCE;
            boolean selected = selectableParams.getSelected();
            String role = selectableParams.getRole();
            if (role != null) {
                switch (role) {
                    case "radioButton":
                        roleM8069boximpl = Role.m8069boximpl(Role.INSTANCE.m8081getRadioButtono7Vup1c());
                        break;
                    case "switch":
                        roleM8069boximpl = Role.m8069boximpl(Role.INSTANCE.m8082getSwitcho7Vup1c());
                        break;
                    case "tab":
                        roleM8069boximpl = Role.m8069boximpl(Role.INSTANCE.m8083getTabo7Vup1c());
                        break;
                    case "checkbox":
                        roleM8069boximpl = Role.m8069boximpl(Role.INSTANCE.m8078getCheckboxo7Vup1c());
                        break;
                    default:
                        roleM8069boximpl = null;
                        break;
                }
            } else {
                roleM8069boximpl = null;
            }
            Role role2 = roleM8069boximpl;
            composer.startReplaceGroup(5004770);
            ComposerKt.sourceInformation(composer, "CC(remember):ModifierRegistry.kt#9igjgp");
            boolean z = (((i & 7168) ^ 3072) > 2048 && composer.changed(eventDispatcher)) || (i & 3072) == 2048;
            Object objRememberedValue = composer.rememberedValue();
            if (z || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                objRememberedValue = new Function0() { // from class: expo.modules.ui.ModifierRegistry$registerBuiltInModifiers$28$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return ModifierRegistry.AnonymousClass28.invoke$lambda$1$lambda$0(eventDispatcher);
                    }
                };
                composer.updateRememberedValue(objRememberedValue);
            }
            composer.endReplaceGroup();
            Modifier modifierM1250selectableoSLSa3U$default = SelectableKt.m1250selectableoSLSa3U$default(companion, selected, false, role2, null, (Function0) objRememberedValue, 10, null);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composer.endReplaceGroup();
            return modifierM1250selectableoSLSa3U$default;
        }
    }

    /* JADX INFO: renamed from: expo.modules.ui.ModifierRegistry$registerBuiltInModifiers$30, reason: invalid class name */
    /* JADX INFO: compiled from: ModifierRegistry.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    static final class AnonymousClass30 implements Function6<Map<String, ? extends Object>, ComposableScope, AppContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit>, Composer, Integer, Modifier> {
        public static final AnonymousClass30 INSTANCE = new AnonymousClass30();

        /* JADX INFO: renamed from: expo.modules.ui.ModifierRegistry$registerBuiltInModifiers$30$WhenMappings */
        /* JADX INFO: compiled from: ModifierRegistry.kt */
        @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[SemanticRoleType.values().length];
                try {
                    iArr[SemanticRoleType.CHECKBOX.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[SemanticRoleType.RADIO_BUTTON.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[SemanticRoleType.SWITCH.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[SemanticRoleType.TAB.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        AnonymousClass30() {
        }

        @Override // kotlin.jvm.functions.Function6
        public /* bridge */ /* synthetic */ Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, Function2<? super String, ? super Map<String, ? extends Object>, ? extends Unit> function2, Composer composer, Integer num) {
            return invoke(map, composableScope, appContext, (Function2<? super String, ? super Map<String, ? extends Object>, Unit>) function2, composer, num.intValue());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invoke$lambda$1$lambda$0(Function2 function2, boolean z) {
            function2.invoke("toggleable", MapsKt.emptyMap());
            return Unit.INSTANCE;
        }

        public final Modifier invoke(Map<String, ? extends Object> map, ComposableScope composableScope, AppContext appContext, final Function2<? super String, ? super Map<String, ? extends Object>, Unit> eventDispatcher, Composer composer, int i) throws MissingTypeConverter {
            Role roleM8069boximpl;
            Intrinsics.checkNotNullParameter(map, "map");
            Intrinsics.checkNotNullParameter(eventDispatcher, "eventDispatcher");
            composer.startReplaceGroup(-1755887871);
            ComposerKt.sourceInformation(composer, "CP(1)570@18255L45:ModifierRegistry.kt#v15e7d");
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1755887871, i, -1, "expo.modules.ui.ModifierRegistry.registerBuiltInModifiers.<anonymous> (ModifierRegistry.kt:559)");
            }
            TypeConverter<?> typeConverterObtainTypeConverter = TypeConverterProviderImpl.INSTANCE.obtainTypeConverter(Reflection.typeOf(ToggleableParams.class));
            Intrinsics.checkNotNull(typeConverterObtainTypeConverter, "null cannot be cast to non-null type expo.modules.kotlin.records.RecordTypeConverter<T of expo.modules.kotlin.records.RecordTypeConverterKt.recordFromMap>");
            ToggleableParams toggleableParams = (ToggleableParams) RecordTypeConverterKt.recordFromMap(map, (RecordTypeConverter) typeConverterObtainTypeConverter);
            SemanticRoleType role = toggleableParams.getRole();
            int i2 = role == null ? -1 : WhenMappings.$EnumSwitchMapping$0[role.ordinal()];
            boolean z = true;
            if (i2 == -1) {
                roleM8069boximpl = null;
            } else if (i2 == 1) {
                roleM8069boximpl = Role.m8069boximpl(Role.INSTANCE.m8078getCheckboxo7Vup1c());
            } else if (i2 == 2) {
                roleM8069boximpl = Role.m8069boximpl(Role.INSTANCE.m8081getRadioButtono7Vup1c());
            } else if (i2 == 3) {
                roleM8069boximpl = Role.m8069boximpl(Role.INSTANCE.m8082getSwitcho7Vup1c());
            } else {
                if (i2 != 4) {
                    throw new NoWhenBranchMatchedException();
                }
                roleM8069boximpl = Role.m8069boximpl(Role.INSTANCE.m8083getTabo7Vup1c());
            }
            Role role2 = roleM8069boximpl;
            Modifier.Companion companion = Modifier.INSTANCE;
            boolean value = toggleableParams.getValue();
            composer.startReplaceGroup(5004770);
            ComposerKt.sourceInformation(composer, "CC(remember):ModifierRegistry.kt#9igjgp");
            if ((((i & 7168) ^ 3072) <= 2048 || !composer.changed(eventDispatcher)) && (i & 3072) != 2048) {
                z = false;
            }
            Object objRememberedValue = composer.rememberedValue();
            if (z || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                objRememberedValue = new Function1() { // from class: expo.modules.ui.ModifierRegistry$registerBuiltInModifiers$30$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return ModifierRegistry.AnonymousClass30.invoke$lambda$1$lambda$0(eventDispatcher, ((Boolean) obj).booleanValue());
                    }
                };
                composer.updateRememberedValue(objRememberedValue);
            }
            composer.endReplaceGroup();
            Modifier modifierM1257toggleableoSLSa3U$default = ToggleableKt.m1257toggleableoSLSa3U$default(companion, value, false, role2, null, (Function1) objRememberedValue, 10, null);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composer.endReplaceGroup();
            return modifierM1257toggleableoSLSa3U$default;
        }
    }
}

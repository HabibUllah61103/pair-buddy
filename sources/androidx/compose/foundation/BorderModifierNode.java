package androidx.compose.foundation;

import androidx.compose.ui.draw.CacheDrawModifierNode;
import androidx.compose.ui.draw.CacheDrawScope;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.draw.DrawResult;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRectKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.BlendMode;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ClipOp;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.ImageBitmapConfig;
import androidx.compose.ui.graphics.ImageBitmapKt;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.PathOperation;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.node.SemanticsModifierNodeKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import com.facebook.imageutils.JfifUtil;
import com.reactcommunity.rndatetimepicker.RNConstants;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: compiled from: Border.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0001\u0018\u00002\u00020\u00012\u00020\u0002B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ,\u0010%\u001a\u00020&*\u00020'2\u0006\u0010\u0019\u001a\u00020\u00062\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\f2\u0006\u0010+\u001a\u00020,H\u0002JC\u0010-\u001a\u00020&*\u00020'2\u0006\u0010\u0019\u001a\u00020\u00062\u0006\u0010(\u001a\u00020.2\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u0002022\u0006\u0010*\u001a\u00020\f2\u0006\u0010+\u001a\u00020,H\u0002¢\u0006\u0004\b3\u00104J\f\u00105\u001a\u000206*\u000207H\u0016R\u0014\u0010\u000b\u001a\u00020\fX\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\fX\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R&\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0004@FX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0018\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R$\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0006@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR$\u0010\u001e\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\b@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u000e\u0010#\u001a\u00020$X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00068"}, d2 = {"Landroidx/compose/foundation/BorderModifierNode;", "Landroidx/compose/ui/node/DelegatingNode;", "Landroidx/compose/ui/node/SemanticsModifierNode;", "widthParameter", "Landroidx/compose/ui/unit/Dp;", "brushParameter", "Landroidx/compose/ui/graphics/Brush;", "shapeParameter", "Landroidx/compose/ui/graphics/Shape;", "<init>", "(FLandroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "shouldAutoInvalidate", "", "getShouldAutoInvalidate", "()Z", "isImportantForBounds", "borderCache", "Landroidx/compose/foundation/BorderCache;", RNConstants.ARG_VALUE, "width", "getWidth-D9Ej5fM", "()F", "setWidth-0680j_4", "(F)V", "F", "brush", "getBrush", "()Landroidx/compose/ui/graphics/Brush;", "setBrush", "(Landroidx/compose/ui/graphics/Brush;)V", "shape", "getShape", "()Landroidx/compose/ui/graphics/Shape;", "setShape", "(Landroidx/compose/ui/graphics/Shape;)V", "drawWithCacheModifierNode", "Landroidx/compose/ui/draw/CacheDrawModifierNode;", "drawGenericBorder", "Landroidx/compose/ui/draw/DrawResult;", "Landroidx/compose/ui/draw/CacheDrawScope;", "outline", "Landroidx/compose/ui/graphics/Outline$Generic;", "fillArea", "strokeWidth", "", "drawRoundRectBorder", "Landroidx/compose/ui/graphics/Outline$Rounded;", "topLeft", "Landroidx/compose/ui/geometry/Offset;", "borderSize", "Landroidx/compose/ui/geometry/Size;", "drawRoundRectBorder-JqoCqck", "(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Outline$Rounded;JJZF)Landroidx/compose/ui/draw/DrawResult;", "applySemantics", "", "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;", "foundation"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class BorderModifierNode extends DelegatingNode implements SemanticsModifierNode {
    public static final int $stable = 8;
    private BorderCache borderCache;
    private Brush brush;
    private final CacheDrawModifierNode drawWithCacheModifierNode;
    private final boolean isImportantForBounds;
    private Shape shape;
    private final boolean shouldAutoInvalidate;
    private float width;

    public /* synthetic */ BorderModifierNode(float f, Brush brush, Shape shape, DefaultConstructorMarker defaultConstructorMarker) {
        this(f, brush, shape);
    }

    private BorderModifierNode(float f, Brush brush, Shape shape) {
        this.width = f;
        this.brush = brush;
        this.shape = shape;
        this.drawWithCacheModifierNode = (CacheDrawModifierNode) delegate(DrawModifierKt.CacheDrawModifierNode(new Function1() { // from class: androidx.compose.foundation.BorderModifierNode$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return BorderModifierNode.drawWithCacheModifierNode$lambda$0(this.f$0, (CacheDrawScope) obj);
            }
        }));
    }

    @Override // androidx.compose.ui.Modifier.Node
    public boolean getShouldAutoInvalidate() {
        return this.shouldAutoInvalidate;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    /* JADX INFO: renamed from: isImportantForBounds, reason: from getter */
    public boolean getIsImportantForBounds() {
        return this.isImportantForBounds;
    }

    /* JADX INFO: renamed from: getWidth-D9Ej5fM, reason: not valid java name and from getter */
    public final float getWidth() {
        return this.width;
    }

    /* JADX INFO: renamed from: setWidth-0680j_4, reason: not valid java name */
    public final void m326setWidth0680j_4(float f) {
        if (Dp.m8897equalsimpl0(this.width, f)) {
            return;
        }
        this.width = f;
        this.drawWithCacheModifierNode.invalidateDrawCache();
    }

    public final Brush getBrush() {
        return this.brush;
    }

    public final void setBrush(Brush brush) {
        if (Intrinsics.areEqual(this.brush, brush)) {
            return;
        }
        this.brush = brush;
        this.drawWithCacheModifierNode.invalidateDrawCache();
    }

    public final Shape getShape() {
        return this.shape;
    }

    public final void setShape(Shape shape) {
        if (Intrinsics.areEqual(this.shape, shape)) {
            return;
        }
        this.shape = shape;
        this.drawWithCacheModifierNode.invalidateDrawCache();
        SemanticsModifierNodeKt.invalidateSemantics(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DrawResult drawWithCacheModifierNode$lambda$0(BorderModifierNode borderModifierNode, CacheDrawScope cacheDrawScope) {
        if (cacheDrawScope.mo466toPx0680j_4(borderModifierNode.width) < 0.0f || Size.m5881getMinDimensionimpl(cacheDrawScope.m5593getSizeNHjbRc()) <= 0.0f) {
            return BorderKt.drawContentWithoutBorder(cacheDrawScope);
        }
        float f = 2;
        float fMin = Math.min(Dp.m8897equalsimpl0(borderModifierNode.width, Dp.INSTANCE.m8910getHairlineD9Ej5fM()) ? 1.0f : (float) Math.ceil(cacheDrawScope.mo466toPx0680j_4(borderModifierNode.width)), (float) Math.ceil(Size.m5881getMinDimensionimpl(cacheDrawScope.m5593getSizeNHjbRc()) / f));
        float f2 = fMin / f;
        long jM5805constructorimpl = Offset.m5805constructorimpl((((long) Float.floatToRawIntBits(f2)) & 4294967295L) | (((long) Float.floatToRawIntBits(f2)) << 32));
        long jM5873constructorimpl = Size.m5873constructorimpl((((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (cacheDrawScope.m5593getSizeNHjbRc() & 4294967295L)) - fMin)) & 4294967295L) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (cacheDrawScope.m5593getSizeNHjbRc() >> 32)) - fMin)) << 32));
        boolean z = f * fMin > Size.m5881getMinDimensionimpl(cacheDrawScope.m5593getSizeNHjbRc());
        Outline outlineMo367createOutlinePq9zytI = borderModifierNode.shape.mo367createOutlinePq9zytI(cacheDrawScope.m5593getSizeNHjbRc(), cacheDrawScope.getLayoutDirection(), cacheDrawScope);
        if (outlineMo367createOutlinePq9zytI instanceof Outline.Generic) {
            return borderModifierNode.drawGenericBorder(cacheDrawScope, borderModifierNode.brush, (Outline.Generic) outlineMo367createOutlinePq9zytI, z, fMin);
        }
        if (outlineMo367createOutlinePq9zytI instanceof Outline.Rounded) {
            return borderModifierNode.m324drawRoundRectBorderJqoCqck(cacheDrawScope, borderModifierNode.brush, (Outline.Rounded) outlineMo367createOutlinePq9zytI, jM5805constructorimpl, jM5873constructorimpl, z, fMin);
        }
        if (outlineMo367createOutlinePq9zytI instanceof Outline.Rectangle) {
            return BorderKt.m319drawRectBorderNsqcLGU(cacheDrawScope, borderModifierNode.brush, jM5805constructorimpl, jM5873constructorimpl, z, fMin);
        }
        throw new NoWhenBranchMatchedException();
    }

    /* JADX WARN: Code duplicated, block: B:26:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:40:0x015e  */
    /* JADX WARN: Type inference failed for: r25v3, types: [T, androidx.compose.ui.graphics.ImageBitmap] */
    private final DrawResult drawGenericBorder(CacheDrawScope cacheDrawScope, final Brush brush, final Outline.Generic generic, boolean z, float f) throws Throwable {
        int iM6291getArgb8888_sVssgQ;
        ColorFilter colorFilterM6099tintxETnrds$default;
        boolean z2;
        Rect rect;
        BorderCache borderCache;
        Ref.ObjectRef objectRef;
        ImageBitmap imageBitmap;
        Canvas canvas;
        CanvasDrawScope canvasDrawScope;
        CanvasDrawScope canvasDrawScope2;
        float f2;
        float f3;
        float f4;
        float f5;
        DrawContext drawContext;
        long jMo6560getSizeNHjbRc;
        DrawContext drawContext2;
        long j;
        if (z) {
            return cacheDrawScope.onDrawWithContent(new Function1() { // from class: androidx.compose.foundation.BorderModifierNode$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return BorderModifierNode.drawGenericBorder$lambda$0(generic, brush, (ContentDrawScope) obj);
                }
            });
        }
        if (brush instanceof SolidColor) {
            iM6291getArgb8888_sVssgQ = ImageBitmapConfig.INSTANCE.m6290getAlpha8_sVssgQ();
            colorFilterM6099tintxETnrds$default = ColorFilter.Companion.m6099tintxETnrds$default(ColorFilter.INSTANCE, Color.m6057copywmQWz5c$default(((SolidColor) brush).getValue(), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), 0, 2, null);
        } else {
            iM6291getArgb8888_sVssgQ = ImageBitmapConfig.INSTANCE.m6291getArgb8888_sVssgQ();
            colorFilterM6099tintxETnrds$default = null;
        }
        int i = iM6291getArgb8888_sVssgQ;
        Rect bounds = generic.getPath().getBounds();
        if (this.borderCache == null) {
            this.borderCache = new BorderCache(null, null, null, null, 15, null);
        }
        BorderCache borderCache2 = this.borderCache;
        Intrinsics.checkNotNull(borderCache2);
        Path pathObtainPath = borderCache2.obtainPath();
        pathObtainPath.reset();
        Path.addRect$default(pathObtainPath, bounds, null, 2, null);
        pathObtainPath.mo5947opN5in7k0(pathObtainPath, generic.getPath(), PathOperation.INSTANCE.m6366getDifferenceb3I0S0c());
        Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
        final long jM9058constructorimpl = IntSize.m9058constructorimpl((((long) ((int) Math.ceil(bounds.getBottom() - bounds.getTop()))) & 4294967295L) | (((long) ((int) Math.ceil(bounds.getRight() - bounds.getLeft()))) << 32));
        BorderCache borderCache3 = this.borderCache;
        Intrinsics.checkNotNull(borderCache3);
        ImageBitmap imageBitmap2 = borderCache3.imageBitmap;
        Canvas canvas2 = borderCache3.canvas;
        ImageBitmapConfig imageBitmapConfigM6283boximpl = imageBitmap2 != null ? ImageBitmapConfig.m6283boximpl(imageBitmap2.mo5922getConfig_sVssgQ()) : null;
        if (!(imageBitmapConfigM6283boximpl == null ? false : ImageBitmapConfig.m6286equalsimpl0(imageBitmapConfigM6283boximpl.m6289unboximpl(), ImageBitmapConfig.INSTANCE.m6291getArgb8888_sVssgQ()))) {
            z2 = ImageBitmapConfig.m6285equalsimpl(i, imageBitmap2 != null ? ImageBitmapConfig.m6283boximpl(imageBitmap2.mo5922getConfig_sVssgQ()) : null);
        }
        try {
            try {
                try {
                    try {
                        if (imageBitmap2 != null && canvas2 != null) {
                            rect = bounds;
                            if (Float.intBitsToFloat((int) (cacheDrawScope.m5593getSizeNHjbRc() >> 32)) <= imageBitmap2.getWidth() && Float.intBitsToFloat((int) (cacheDrawScope.m5593getSizeNHjbRc() & 4294967295L)) <= imageBitmap2.getHeight() && z2) {
                                borderCache = borderCache3;
                                objectRef = objectRef2;
                                canvas = canvas2;
                                imageBitmap = imageBitmap2;
                            }
                            canvasDrawScope = borderCache.canvasDrawScope;
                            if (canvasDrawScope == null) {
                                canvasDrawScope = new CanvasDrawScope();
                                borderCache.canvasDrawScope = canvasDrawScope;
                            }
                            CanvasDrawScope canvasDrawScope3 = canvasDrawScope;
                            long jM9075toSizeozmzZPI = IntSizeKt.m9075toSizeozmzZPI(jM9058constructorimpl);
                            LayoutDirection layoutDirection = cacheDrawScope.getLayoutDirection();
                            CanvasDrawScope.DrawParams drawParams = canvasDrawScope3.getDrawParams();
                            Density density = drawParams.getDensity();
                            LayoutDirection layoutDirection2 = drawParams.getLayoutDirection();
                            Canvas canvas3 = drawParams.getCanvas();
                            long size = drawParams.getSize();
                            CanvasDrawScope.DrawParams drawParams2 = canvasDrawScope3.getDrawParams();
                            drawParams2.setDensity(cacheDrawScope);
                            drawParams2.setLayoutDirection(layoutDirection);
                            drawParams2.setCanvas(canvas);
                            drawParams2.m6559setSizeuvyYCjk(jM9075toSizeozmzZPI);
                            canvas.save();
                            canvasDrawScope2 = canvasDrawScope3;
                            DrawScope.m6633drawRectnJ9OG0$default(canvasDrawScope2, Color.INSTANCE.m6084getBlack0d7_KjU(), 0L, jM9075toSizeozmzZPI, 0.0f, null, null, BlendMode.INSTANCE.m5971getClear0nO6VwU(), 58, null);
                            f2 = -rect.getLeft();
                            f3 = -rect.getTop();
                            canvasDrawScope2.getDrawContext().getTransform().translate(f2, f3);
                            ?? r25 = imageBitmap;
                            f5 = f3;
                            f4 = f2;
                            Canvas canvas4 = canvas;
                            final ColorFilter colorFilter = colorFilterM6099tintxETnrds$default;
                            DrawScope.m6628drawPathGBMwjPU$default(canvasDrawScope2, generic.getPath(), brush, 0.0f, new Stroke(f * 2, 0.0f, 0, 0, null, 30, null), null, 0, 52, null);
                            float f6 = 1;
                            float fIntBitsToFloat = (Float.intBitsToFloat((int) (canvasDrawScope2.mo6639getSizeNHjbRc() >> 32)) + f6) / Float.intBitsToFloat((int) (canvasDrawScope2.mo6639getSizeNHjbRc() >> 32));
                            float fIntBitsToFloat2 = (Float.intBitsToFloat((int) (canvasDrawScope2.mo6639getSizeNHjbRc() & 4294967295L)) + f6) / Float.intBitsToFloat((int) (canvasDrawScope2.mo6639getSizeNHjbRc() & 4294967295L));
                            long jMo6638getCenterF1C5BW0 = canvasDrawScope2.mo6638getCenterF1C5BW0();
                            drawContext = canvasDrawScope2.getDrawContext();
                            jMo6560getSizeNHjbRc = drawContext.mo6560getSizeNHjbRc();
                            drawContext.getCanvas().save();
                            drawContext.getTransform().mo6567scale0AR0LA0(fIntBitsToFloat, fIntBitsToFloat2, jMo6638getCenterF1C5BW0);
                            final Ref.ObjectRef objectRef3 = objectRef;
                            j = jMo6560getSizeNHjbRc;
                            DrawScope.m6628drawPathGBMwjPU$default(canvasDrawScope2, pathObtainPath, brush, 0.0f, null, null, BlendMode.INSTANCE.m5971getClear0nO6VwU(), 28, null);
                            drawContext.getCanvas().restore();
                            drawContext.mo6561setSizeuvyYCjk(j);
                            canvasDrawScope2.getDrawContext().getTransform().translate(-f4, -f5);
                            canvas4.restore();
                            CanvasDrawScope.DrawParams drawParams3 = canvasDrawScope3.getDrawParams();
                            drawParams3.setDensity(density);
                            drawParams3.setLayoutDirection(layoutDirection2);
                            drawParams3.setCanvas(canvas3);
                            drawParams3.m6559setSizeuvyYCjk(size);
                            r25.prepareToDraw();
                            objectRef3.element = r25;
                            final Rect rect2 = rect;
                            return cacheDrawScope.onDrawWithContent(new Function1() { // from class: androidx.compose.foundation.BorderModifierNode$$ExternalSyntheticLambda3
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj) {
                                    return BorderModifierNode.drawGenericBorder$lambda$3(rect2, objectRef3, jM9058constructorimpl, colorFilter, (ContentDrawScope) obj);
                                }
                            });
                        }
                        rect = bounds;
                        DrawScope.m6628drawPathGBMwjPU$default(canvasDrawScope2, pathObtainPath, brush, 0.0f, null, null, BlendMode.INSTANCE.m5971getClear0nO6VwU(), 28, null);
                        drawContext.getCanvas().restore();
                        drawContext.mo6561setSizeuvyYCjk(j);
                        canvasDrawScope2.getDrawContext().getTransform().translate(-f4, -f5);
                        canvas4.restore();
                        CanvasDrawScope.DrawParams drawParams4 = canvasDrawScope3.getDrawParams();
                        drawParams4.setDensity(density);
                        drawParams4.setLayoutDirection(layoutDirection2);
                        drawParams4.setCanvas(canvas3);
                        drawParams4.m6559setSizeuvyYCjk(size);
                        r25.prepareToDraw();
                        objectRef3.element = r25;
                        final Rect rect3 = rect;
                        return cacheDrawScope.onDrawWithContent(new Function1() { // from class: androidx.compose.foundation.BorderModifierNode$$ExternalSyntheticLambda3
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) {
                                return BorderModifierNode.drawGenericBorder$lambda$3(rect3, objectRef3, jM9058constructorimpl, colorFilter, (ContentDrawScope) obj);
                            }
                        });
                    } catch (Throwable th) {
                        th = th;
                        drawContext2 = drawContext;
                        drawContext2.getCanvas().restore();
                        drawContext2.mo6561setSizeuvyYCjk(j);
                        throw th;
                    }
                    drawContext.getTransform().mo6567scale0AR0LA0(fIntBitsToFloat, fIntBitsToFloat2, jMo6638getCenterF1C5BW0);
                    final Ref.ObjectRef objectRef4 = objectRef;
                    j = jMo6560getSizeNHjbRc;
                } catch (Throwable th2) {
                    th = th2;
                    drawContext2 = drawContext;
                    j = jMo6560getSizeNHjbRc;
                }
                DrawScope.m6628drawPathGBMwjPU$default(canvasDrawScope2, generic.getPath(), brush, 0.0f, new Stroke(f * 2, 0.0f, 0, 0, null, 30, null), null, 0, 52, null);
                float f7 = 1;
                float fIntBitsToFloat3 = (Float.intBitsToFloat((int) (canvasDrawScope2.mo6639getSizeNHjbRc() >> 32)) + f7) / Float.intBitsToFloat((int) (canvasDrawScope2.mo6639getSizeNHjbRc() >> 32));
                float fIntBitsToFloat4 = (Float.intBitsToFloat((int) (canvasDrawScope2.mo6639getSizeNHjbRc() & 4294967295L)) + f7) / Float.intBitsToFloat((int) (canvasDrawScope2.mo6639getSizeNHjbRc() & 4294967295L));
                long jMo6638getCenterF1C5BW1 = canvasDrawScope2.mo6638getCenterF1C5BW0();
                drawContext = canvasDrawScope2.getDrawContext();
                jMo6560getSizeNHjbRc = drawContext.mo6560getSizeNHjbRc();
                drawContext.getCanvas().save();
            } catch (Throwable th3) {
                th = th3;
                canvasDrawScope2.getDrawContext().getTransform().translate(-f4, -f5);
                throw th;
            }
            ?? r26 = imageBitmap;
            f5 = f3;
            f4 = f2;
            Canvas canvas5 = canvas;
            final ColorFilter colorFilter2 = colorFilterM6099tintxETnrds$default;
        } catch (Throwable th4) {
            th = th4;
            f4 = f2;
            f5 = f3;
        }
        borderCache = borderCache3;
        objectRef = objectRef2;
        ImageBitmap imageBitmapM6296ImageBitmapx__hDU$default = ImageBitmapKt.m6296ImageBitmapx__hDU$default((int) (jM9058constructorimpl >> 32), (int) (jM9058constructorimpl & 4294967295L), i, false, null, 24, null);
        borderCache.imageBitmap = imageBitmapM6296ImageBitmapx__hDU$default;
        Canvas Canvas = androidx.compose.ui.graphics.CanvasKt.Canvas(imageBitmapM6296ImageBitmapx__hDU$default);
        borderCache.canvas = Canvas;
        imageBitmap = imageBitmapM6296ImageBitmapx__hDU$default;
        canvas = Canvas;
        canvasDrawScope = borderCache.canvasDrawScope;
        if (canvasDrawScope == null) {
            canvasDrawScope = new CanvasDrawScope();
            borderCache.canvasDrawScope = canvasDrawScope;
        }
        CanvasDrawScope canvasDrawScope4 = canvasDrawScope;
        long jM9075toSizeozmzZPI2 = IntSizeKt.m9075toSizeozmzZPI(jM9058constructorimpl);
        LayoutDirection layoutDirection3 = cacheDrawScope.getLayoutDirection();
        CanvasDrawScope.DrawParams drawParams5 = canvasDrawScope4.getDrawParams();
        Density density2 = drawParams5.getDensity();
        LayoutDirection layoutDirection4 = drawParams5.getLayoutDirection();
        Canvas canvas6 = drawParams5.getCanvas();
        long size2 = drawParams5.getSize();
        CanvasDrawScope.DrawParams drawParams6 = canvasDrawScope4.getDrawParams();
        drawParams6.setDensity(cacheDrawScope);
        drawParams6.setLayoutDirection(layoutDirection3);
        drawParams6.setCanvas(canvas);
        drawParams6.m6559setSizeuvyYCjk(jM9075toSizeozmzZPI2);
        canvas.save();
        canvasDrawScope2 = canvasDrawScope4;
        DrawScope.m6633drawRectnJ9OG0$default(canvasDrawScope2, Color.INSTANCE.m6084getBlack0d7_KjU(), 0L, jM9075toSizeozmzZPI2, 0.0f, null, null, BlendMode.INSTANCE.m5971getClear0nO6VwU(), 58, null);
        f2 = -rect.getLeft();
        f3 = -rect.getTop();
        canvasDrawScope2.getDrawContext().getTransform().translate(f2, f3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit drawGenericBorder$lambda$0(Outline.Generic generic, Brush brush, ContentDrawScope contentDrawScope) {
        contentDrawScope.drawContent();
        DrawScope.m6628drawPathGBMwjPU$default(contentDrawScope, generic.getPath(), brush, 0.0f, null, null, 0, 60, null);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit drawGenericBorder$lambda$3(Rect rect, Ref.ObjectRef objectRef, long j, ColorFilter colorFilter, ContentDrawScope contentDrawScope) throws Throwable {
        float f;
        contentDrawScope.drawContent();
        ContentDrawScope contentDrawScope2 = contentDrawScope;
        float left = rect.getLeft();
        float top = rect.getTop();
        contentDrawScope2.getDrawContext().getTransform().translate(left, top);
        try {
            try {
                DrawScope.m6622drawImageAZ2fEMs$default(contentDrawScope2, (ImageBitmap) objectRef.element, 0L, j, 0L, 0L, 0.0f, null, colorFilter, 0, 0, 890, null);
                contentDrawScope2.getDrawContext().getTransform().translate(-left, -top);
                return Unit.INSTANCE;
            } catch (Throwable th) {
                th = th;
                left = left;
                f = top;
                contentDrawScope2.getDrawContext().getTransform().translate(-left, -f);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            f = top;
        }
    }

    /* JADX INFO: renamed from: drawRoundRectBorder-JqoCqck, reason: not valid java name */
    private final DrawResult m324drawRoundRectBorderJqoCqck(CacheDrawScope cacheDrawScope, final Brush brush, Outline.Rounded rounded, final long j, final long j2, final boolean z, final float f) {
        if (RoundRectKt.isSimple(rounded.getRoundRect())) {
            final long jM5863getTopLeftCornerRadiuskKHJgLs = rounded.getRoundRect().m5863getTopLeftCornerRadiuskKHJgLs();
            final float f2 = f / 2;
            final Stroke stroke = new Stroke(f, 0.0f, 0, 0, null, 30, null);
            return cacheDrawScope.onDrawWithContent(new Function1() { // from class: androidx.compose.foundation.BorderModifierNode$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return BorderModifierNode.drawRoundRectBorder_JqoCqck$lambda$0(z, brush, jM5863getTopLeftCornerRadiuskKHJgLs, f2, f, j, j2, stroke, (ContentDrawScope) obj);
                }
            });
        }
        if (this.borderCache == null) {
            this.borderCache = new BorderCache(null, null, null, null, 15, null);
        }
        BorderCache borderCache = this.borderCache;
        Intrinsics.checkNotNull(borderCache);
        final Path pathCreateRoundRectPath = BorderKt.createRoundRectPath(borderCache.obtainPath(), rounded.getRoundRect(), f, z);
        return cacheDrawScope.onDrawWithContent(new Function1() { // from class: androidx.compose.foundation.BorderModifierNode$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return BorderModifierNode.drawRoundRectBorder_JqoCqck$lambda$1(pathCreateRoundRectPath, brush, (ContentDrawScope) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit drawRoundRectBorder_JqoCqck$lambda$0(boolean z, Brush brush, long j, float f, float f2, long j2, long j3, Stroke stroke, ContentDrawScope contentDrawScope) {
        contentDrawScope.drawContent();
        if (z) {
            DrawScope.m6634drawRoundRectZuiqVtQ$default(contentDrawScope, brush, 0L, 0L, j, 0.0f, null, null, 0, 246, null);
        } else if (Float.intBitsToFloat((int) (j >> 32)) < f) {
            ContentDrawScope contentDrawScope2 = contentDrawScope;
            float fIntBitsToFloat = Float.intBitsToFloat((int) (contentDrawScope.mo6639getSizeNHjbRc() >> 32)) - f2;
            float fIntBitsToFloat2 = Float.intBitsToFloat((int) (contentDrawScope.mo6639getSizeNHjbRc() & 4294967295L)) - f2;
            int iM6046getDifferencertfAjoo = ClipOp.INSTANCE.m6046getDifferencertfAjoo();
            DrawContext drawContext = contentDrawScope2.getDrawContext();
            long jMo6560getSizeNHjbRc = drawContext.mo6560getSizeNHjbRc();
            drawContext.getCanvas().save();
            try {
                drawContext.getTransform().mo6563clipRectN_I0leg(f2, f2, fIntBitsToFloat, fIntBitsToFloat2, iM6046getDifferencertfAjoo);
                DrawScope.m6634drawRoundRectZuiqVtQ$default(contentDrawScope2, brush, 0L, 0L, j, 0.0f, null, null, 0, 246, null);
            } finally {
                drawContext.getCanvas().restore();
                drawContext.mo6561setSizeuvyYCjk(jMo6560getSizeNHjbRc);
            }
        } else {
            DrawScope.m6634drawRoundRectZuiqVtQ$default(contentDrawScope, brush, j2, j3, BorderKt.m320shrinkKibmq7A(j, f), 0.0f, stroke, null, 0, JfifUtil.MARKER_RST0, null);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit drawRoundRectBorder_JqoCqck$lambda$1(Path path, Brush brush, ContentDrawScope contentDrawScope) {
        contentDrawScope.drawContent();
        DrawScope.m6628drawPathGBMwjPU$default(contentDrawScope, path, brush, 0.0f, null, null, 0, 60, null);
        return Unit.INSTANCE;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public void applySemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertiesKt.setShape(semanticsPropertyReceiver, this.shape);
    }
}

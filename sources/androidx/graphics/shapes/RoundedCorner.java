package androidx.graphics.shapes;

import androidx.collection.FloatFloatPair;
import androidx.media3.extractor.text.ttml.TtmlNode;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: RoundedPolygon.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u0007\n\u0002\b\u0011\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0014\b\u0002\u0018\u00002\u00020\u0001B7\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u0012\n\u0010\u0005\u001a\u00060\u0003j\u0002`\u0004\u0012\n\u0010\u0006\u001a\u00060\u0003j\u0002`\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\t\u0010\nJ \u0010(\u001a\b\u0012\u0004\u0012\u00020*0)2\u0006\u0010+\u001a\u00020\u00172\b\b\u0002\u0010,\u001a\u00020\u0017H\u0007J\u0010\u0010-\u001a\u00020\u00172\u0006\u0010.\u001a\u00020\u0017H\u0002Jc\u0010/\u001a\u00020*2\u0006\u00100\u001a\u00020\u00172\u0006\u00101\u001a\u00020\u00172\n\u00102\u001a\u00060\u0003j\u0002`\u00042\n\u00103\u001a\u00060\u0003j\u0002`\u00042\n\u00104\u001a\u00060\u0003j\u0002`\u00042\n\u00105\u001a\u00060\u0003j\u0002`\u00042\n\u00106\u001a\u00060\u0003j\u0002`\u00042\u0006\u00107\u001a\u00020\u0017H\u0002¢\u0006\u0004\b8\u00109JG\u0010:\u001a\n\u0018\u00010\u0003j\u0004\u0018\u0001`\u00042\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u00042\n\u0010;\u001a\u00060\u0003j\u0002`\u00042\n\u0010\u0005\u001a\u00060\u0003j\u0002`\u00042\n\u0010\u0012\u001a\u00060\u0003j\u0002`\u0004H\u0002¢\u0006\u0004\b<\u0010=R\u0017\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\u0005\u001a\u00060\u0003j\u0002`\u0004¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u000e\u0010\fR\u0017\u0010\u0006\u001a\u00060\u0003j\u0002`\u0004¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u000f\u0010\fR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0012\u001a\u00060\u0003j\u0002`\u0004¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u0013\u0010\fR\u0017\u0010\u0014\u001a\u00060\u0003j\u0002`\u0004¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u0015\u0010\fR\u0011\u0010\u0016\u001a\u00020\u0017¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0011\u0010\u001a\u001a\u00020\u0017¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0019R\u0011\u0010\u001c\u001a\u00020\u0017¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0019R\u0011\u0010\u001e\u001a\u00020\u0017¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0019R\u0011\u0010 \u001a\u00020\u0017¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u0019R\u0011\u0010\"\u001a\u00020\u00178F¢\u0006\u0006\u001a\u0004\b#\u0010\u0019R \u0010$\u001a\u00060\u0003j\u0002`\u0004X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\r\u001a\u0004\b%\u0010\f\"\u0004\b&\u0010'¨\u0006>"}, d2 = {"Landroidx/graphics/shapes/RoundedCorner;", "", "p0", "Landroidx/collection/FloatFloatPair;", "Landroidx/graphics/shapes/Point;", "p1", "p2", "rounding", "Landroidx/graphics/shapes/CornerRounding;", "<init>", "(JJJLandroidx/graphics/shapes/CornerRounding;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "getP0-1ufDz9w", "()J", "J", "getP1-1ufDz9w", "getP2-1ufDz9w", "getRounding", "()Landroidx/graphics/shapes/CornerRounding;", "d1", "getD1-1ufDz9w", "d2", "getD2-1ufDz9w", "cornerRadius", "", "getCornerRadius", "()F", "smoothing", "getSmoothing", "cosAngle", "getCosAngle", "sinAngle", "getSinAngle", "expectedRoundCut", "getExpectedRoundCut", "expectedCut", "getExpectedCut", TtmlNode.CENTER, "getCenter-1ufDz9w", "setCenter-DnnuFBc", "(J)V", "getCubics", "", "Landroidx/graphics/shapes/Cubic;", "allowedCut0", "allowedCut1", "calculateActualSmoothingValue", "allowedCut", "computeFlankingCurve", "actualRoundCut", "actualSmoothingValues", "corner", "sideStart", "circleSegmentIntersection", "otherCircleSegmentIntersection", "circleCenter", "actualR", "computeFlankingCurve-oAJzIJU", "(FFJJJJJF)Landroidx/graphics/shapes/Cubic;", "lineIntersection", "d0", "lineIntersection-CBFvKDc", "(JJJJ)Landroidx/collection/FloatFloatPair;", "graphics-shapes"}, k = 1, mv = {2, 0, 0}, xi = 48)
final class RoundedCorner {
    private long center;
    private final float cornerRadius;
    private final float cosAngle;
    private final long d1;
    private final long d2;
    private final float expectedRoundCut;
    private final long p0;
    private final long p1;
    private final long p2;
    private final CornerRounding rounding;
    private final float sinAngle;
    private final float smoothing;

    public /* synthetic */ RoundedCorner(long j, long j2, long j3, CornerRounding cornerRounding, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, j2, j3, cornerRounding);
    }

    public final List<Cubic> getCubics(float f) {
        return getCubics$default(this, f, 0.0f, 2, null);
    }

    private RoundedCorner(long j, long j2, long j3, CornerRounding cornerRounding) {
        this.p0 = j;
        this.p1 = j2;
        this.p2 = j3;
        this.rounding = cornerRounding;
        long jM9228minusybeJwSQ = PointKt.m9228minusybeJwSQ(j, j2);
        long jM9228minusybeJwSQ2 = PointKt.m9228minusybeJwSQ(j3, j2);
        float fM9223getDistanceDnnuFBc = PointKt.m9223getDistanceDnnuFBc(jM9228minusybeJwSQ);
        float fM9223getDistanceDnnuFBc2 = PointKt.m9223getDistanceDnnuFBc(jM9228minusybeJwSQ2);
        if (fM9223getDistanceDnnuFBc > 0.0f && fM9223getDistanceDnnuFBc2 > 0.0f) {
            long jM9219divso9K2fw = PointKt.m9219divso9K2fw(jM9228minusybeJwSQ, fM9223getDistanceDnnuFBc);
            this.d1 = jM9219divso9K2fw;
            long jM9219divso9K2fw2 = PointKt.m9219divso9K2fw(jM9228minusybeJwSQ2, fM9223getDistanceDnnuFBc2);
            this.d2 = jM9219divso9K2fw2;
            float radius = cornerRounding != null ? cornerRounding.getRadius() : 0.0f;
            this.cornerRadius = radius;
            this.smoothing = cornerRounding != null ? cornerRounding.getSmoothing() : 0.0f;
            float fM9221dotProductybeJwSQ = PointKt.m9221dotProductybeJwSQ(jM9219divso9K2fw, jM9219divso9K2fw2);
            this.cosAngle = fM9221dotProductybeJwSQ;
            float f = 1;
            float fSqrt = (float) Math.sqrt(f - Utils.square(fM9221dotProductybeJwSQ));
            this.sinAngle = fSqrt;
            this.expectedRoundCut = ((double) fSqrt) > 0.001d ? (radius * (fM9221dotProductybeJwSQ + f)) / fSqrt : 0.0f;
        } else {
            this.d1 = FloatFloatPair.m27constructorimpl(0.0f, 0.0f);
            this.d2 = FloatFloatPair.m27constructorimpl(0.0f, 0.0f);
            this.cornerRadius = 0.0f;
            this.smoothing = 0.0f;
            this.cosAngle = 0.0f;
            this.sinAngle = 0.0f;
            this.expectedRoundCut = 0.0f;
        }
        this.center = FloatFloatPair.m27constructorimpl(0.0f, 0.0f);
    }

    public /* synthetic */ RoundedCorner(long j, long j2, long j3, CornerRounding cornerRounding, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, j2, j3, (i & 8) != 0 ? null : cornerRounding, null);
    }

    /* JADX INFO: renamed from: getP0-1ufDz9w, reason: not valid java name and from getter */
    public final long getP0() {
        return this.p0;
    }

    /* JADX INFO: renamed from: getP1-1ufDz9w, reason: not valid java name and from getter */
    public final long getP1() {
        return this.p1;
    }

    /* JADX INFO: renamed from: getP2-1ufDz9w, reason: not valid java name and from getter */
    public final long getP2() {
        return this.p2;
    }

    public final CornerRounding getRounding() {
        return this.rounding;
    }

    /* JADX INFO: renamed from: getD1-1ufDz9w, reason: not valid java name and from getter */
    public final long getD1() {
        return this.d1;
    }

    /* JADX INFO: renamed from: getD2-1ufDz9w, reason: not valid java name and from getter */
    public final long getD2() {
        return this.d2;
    }

    public final float getCornerRadius() {
        return this.cornerRadius;
    }

    public final float getSmoothing() {
        return this.smoothing;
    }

    public final float getCosAngle() {
        return this.cosAngle;
    }

    public final float getSinAngle() {
        return this.sinAngle;
    }

    public final float getExpectedRoundCut() {
        return this.expectedRoundCut;
    }

    public final float getExpectedCut() {
        return (1 + this.smoothing) * this.expectedRoundCut;
    }

    /* JADX INFO: renamed from: getCenter-1ufDz9w, reason: not valid java name and from getter */
    public final long getCenter() {
        return this.center;
    }

    /* JADX INFO: renamed from: setCenter-DnnuFBc, reason: not valid java name */
    public final void m9242setCenterDnnuFBc(long j) {
        this.center = j;
    }

    public static /* synthetic */ List getCubics$default(RoundedCorner roundedCorner, float f, float f2, int i, Object obj) {
        if ((i & 2) != 0) {
            f2 = f;
        }
        return roundedCorner.getCubics(f, f2);
    }

    public final List<Cubic> getCubics(float allowedCut0, float allowedCut1) {
        float fMin = Math.min(allowedCut0, allowedCut1);
        float f = this.expectedRoundCut;
        if (f < 1.0E-4f || fMin < 1.0E-4f || this.cornerRadius < 1.0E-4f) {
            this.center = this.p1;
            return CollectionsKt.listOf(Cubic.INSTANCE.straightLine(PointKt.m9225getXDnnuFBc(this.p1), PointKt.m9226getYDnnuFBc(this.p1), PointKt.m9225getXDnnuFBc(this.p1), PointKt.m9226getYDnnuFBc(this.p1)));
        }
        float fMin2 = Math.min(fMin, f);
        float fCalculateActualSmoothingValue = calculateActualSmoothingValue(allowedCut0);
        float fCalculateActualSmoothingValue2 = calculateActualSmoothingValue(allowedCut1);
        float f2 = (this.cornerRadius * fMin2) / this.expectedRoundCut;
        this.center = PointKt.m9229plusybeJwSQ(this.p1, PointKt.m9231timesso9K2fw(PointKt.m9222getDirectionDnnuFBc(PointKt.m9219divso9K2fw(PointKt.m9229plusybeJwSQ(this.d1, this.d2), 2.0f)), (float) Math.sqrt(Utils.square(f2) + Utils.square(fMin2))));
        long jM9229plusybeJwSQ = PointKt.m9229plusybeJwSQ(this.p1, PointKt.m9231timesso9K2fw(this.d1, fMin2));
        long jM9229plusybeJwSQ2 = PointKt.m9229plusybeJwSQ(this.p1, PointKt.m9231timesso9K2fw(this.d2, fMin2));
        Cubic cubicM9234computeFlankingCurveoAJzIJU = m9234computeFlankingCurveoAJzIJU(fMin2, fCalculateActualSmoothingValue, this.p1, this.p0, jM9229plusybeJwSQ, jM9229plusybeJwSQ2, this.center, f2);
        Cubic cubicReverse = m9234computeFlankingCurveoAJzIJU(fMin2, fCalculateActualSmoothingValue2, this.p1, this.p2, jM9229plusybeJwSQ2, jM9229plusybeJwSQ, this.center, f2).reverse();
        return CollectionsKt.listOf((Object[]) new Cubic[]{cubicM9234computeFlankingCurveoAJzIJU, Cubic.INSTANCE.circularArc(PointKt.m9225getXDnnuFBc(this.center), PointKt.m9226getYDnnuFBc(this.center), cubicM9234computeFlankingCurveoAJzIJU.getAnchor1X(), cubicM9234computeFlankingCurveoAJzIJU.getAnchor1Y(), cubicReverse.getAnchor0X(), cubicReverse.getAnchor0Y()), cubicReverse});
    }

    private final float calculateActualSmoothingValue(float allowedCut) {
        if (allowedCut > getExpectedCut()) {
            return this.smoothing;
        }
        float f = this.expectedRoundCut;
        if (allowedCut > f) {
            return (this.smoothing * (allowedCut - f)) / (getExpectedCut() - this.expectedRoundCut);
        }
        return 0.0f;
    }

    /* JADX INFO: renamed from: computeFlankingCurve-oAJzIJU, reason: not valid java name */
    private final Cubic m9234computeFlankingCurveoAJzIJU(float actualRoundCut, float actualSmoothingValues, long corner, long sideStart, long circleSegmentIntersection, long otherCircleSegmentIntersection, long circleCenter, float actualR) {
        long jM9222getDirectionDnnuFBc = PointKt.m9222getDirectionDnnuFBc(PointKt.m9228minusybeJwSQ(sideStart, corner));
        long jM9229plusybeJwSQ = PointKt.m9229plusybeJwSQ(corner, PointKt.m9231timesso9K2fw(PointKt.m9231timesso9K2fw(jM9222getDirectionDnnuFBc, actualRoundCut), 1 + actualSmoothingValues));
        long packedValue = circleSegmentIntersection;
        long jM9227interpolatedLqxh1s = PointKt.m9227interpolatedLqxh1s(packedValue, PointKt.m9219divso9K2fw(PointKt.m9229plusybeJwSQ(circleSegmentIntersection, otherCircleSegmentIntersection), 2.0f), actualSmoothingValues);
        long jM9229plusybeJwSQ2 = PointKt.m9229plusybeJwSQ(circleCenter, PointKt.m9231timesso9K2fw(Utils.directionVector(PointKt.m9225getXDnnuFBc(jM9227interpolatedLqxh1s) - PointKt.m9225getXDnnuFBc(circleCenter), PointKt.m9226getYDnnuFBc(jM9227interpolatedLqxh1s) - PointKt.m9226getYDnnuFBc(circleCenter)), actualR));
        FloatFloatPair floatFloatPairM9235lineIntersectionCBFvKDc = m9235lineIntersectionCBFvKDc(sideStart, jM9222getDirectionDnnuFBc, jM9229plusybeJwSQ2, Utils.m9262rotate90DnnuFBc(PointKt.m9228minusybeJwSQ(jM9229plusybeJwSQ2, circleCenter)));
        if (floatFloatPairM9235lineIntersectionCBFvKDc != null) {
            packedValue = floatFloatPairM9235lineIntersectionCBFvKDc.getPackedValue();
        }
        return new Cubic(jM9229plusybeJwSQ, PointKt.m9219divso9K2fw(PointKt.m9229plusybeJwSQ(jM9229plusybeJwSQ, PointKt.m9231timesso9K2fw(packedValue, 2.0f)), 3.0f), packedValue, jM9229plusybeJwSQ2, null);
    }

    /* JADX INFO: renamed from: lineIntersection-CBFvKDc, reason: not valid java name */
    private final FloatFloatPair m9235lineIntersectionCBFvKDc(long p0, long d0, long p1, long d1) {
        long jM9262rotate90DnnuFBc = Utils.m9262rotate90DnnuFBc(d1);
        float fM9221dotProductybeJwSQ = PointKt.m9221dotProductybeJwSQ(d0, jM9262rotate90DnnuFBc);
        if (Math.abs(fM9221dotProductybeJwSQ) < 1.0E-4f) {
            return null;
        }
        float fM9221dotProductybeJwSQ2 = PointKt.m9221dotProductybeJwSQ(PointKt.m9228minusybeJwSQ(p1, p0), jM9262rotate90DnnuFBc);
        if (Math.abs(fM9221dotProductybeJwSQ) < Math.abs(fM9221dotProductybeJwSQ2) * 1.0E-4f) {
            return null;
        }
        return FloatFloatPair.m24boximpl(PointKt.m9229plusybeJwSQ(p0, PointKt.m9231timesso9K2fw(d0, fM9221dotProductybeJwSQ2 / fM9221dotProductybeJwSQ)));
    }
}

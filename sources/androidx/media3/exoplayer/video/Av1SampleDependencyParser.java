package androidx.media3.exoplayer.video;

import androidx.media3.container.ObuParser;
import java.nio.ByteBuffer;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class Av1SampleDependencyParser {
    private static final int MAX_OBU_COUNT_FOR_PARTIAL_SKIP = 8;
    private ObuParser.SequenceHeader sequenceHeader;

    public int sampleLimitAfterSkippingNonReferenceFrame(ByteBuffer byteBuffer, boolean z) {
        List<ObuParser.Obu> listSplit = ObuParser.split(byteBuffer);
        updateSequenceHeaders(listSplit);
        int size = listSplit.size() - 1;
        int i = 0;
        while (size >= 0 && canSkipObu(listSplit.get(size), z)) {
            if (listSplit.get(size).type == 6 || listSplit.get(size).type == 3) {
                i++;
            }
            size--;
        }
        if (i > 1 || size + 1 >= 8) {
            return byteBuffer.limit();
        }
        if (size >= 0) {
            return listSplit.get(size).payload.limit();
        }
        return byteBuffer.position();
    }

    public void queueInputBuffer(ByteBuffer byteBuffer) {
        updateSequenceHeaders(ObuParser.split(byteBuffer));
    }

    public void reset() {
        this.sequenceHeader = null;
    }

    private boolean canSkipObu(ObuParser.Obu obu, boolean z) {
        ObuParser.SequenceHeader sequenceHeader;
        ObuParser.FrameHeader frameHeader;
        if (obu.type == 2 || obu.type == 15) {
            return true;
        }
        if (obu.type != 3 || z) {
            return ((obu.type != 6 && obu.type != 3) || (sequenceHeader = this.sequenceHeader) == null || (frameHeader = ObuParser.FrameHeader.parse(sequenceHeader, obu)) == null || frameHeader.isDependedOn()) ? false : true;
        }
        return false;
    }

    private void updateSequenceHeaders(List<ObuParser.Obu> list) {
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i).type == 1) {
                this.sequenceHeader = ObuParser.SequenceHeader.parse(list.get(i));
            }
        }
    }
}

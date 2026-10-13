package com.bumptech.glide.integration.avif;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import com.bumptech.glide.Glide;
import com.bumptech.glide.Registry;
import com.bumptech.glide.load.resource.bitmap.BitmapDrawableDecoder;
import com.bumptech.glide.module.LibraryGlideModule;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes4.dex */
public final class AvifGlideModule extends LibraryGlideModule {
    @Override // com.bumptech.glide.module.LibraryGlideModule, com.bumptech.glide.module.RegistersComponents
    public void registerComponents(Context context, Glide glide, Registry registry) {
        AvifByteBufferBitmapDecoder avifByteBufferBitmapDecoder = new AvifByteBufferBitmapDecoder(glide.getBitmapPool());
        registry.prepend(Registry.BUCKET_BITMAP, ByteBuffer.class, Bitmap.class, avifByteBufferBitmapDecoder);
        registry.prepend(Registry.BUCKET_BITMAP_DRAWABLE, ByteBuffer.class, BitmapDrawable.class, new BitmapDrawableDecoder(context.getResources(), avifByteBufferBitmapDecoder));
        AvifStreamBitmapDecoder avifStreamBitmapDecoder = new AvifStreamBitmapDecoder(registry.getImageHeaderParsers(), avifByteBufferBitmapDecoder, glide.getArrayPool());
        registry.prepend(Registry.BUCKET_BITMAP, InputStream.class, Bitmap.class, avifStreamBitmapDecoder);
        registry.prepend(Registry.BUCKET_BITMAP_DRAWABLE, InputStream.class, BitmapDrawable.class, new BitmapDrawableDecoder(context.getResources(), avifStreamBitmapDecoder));
    }
}

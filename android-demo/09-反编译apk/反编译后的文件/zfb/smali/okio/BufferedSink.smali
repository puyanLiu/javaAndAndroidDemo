.class public interface abstract Lokio/BufferedSink;
.super Ljava/lang/Object;

# interfaces
.implements Lokio/Sink;


# virtual methods
.method public abstract buffer()Lokio/Buffer;
.end method

.method public abstract emitCompleteSegments()Lokio/BufferedSink;
.end method

.method public abstract outputStream()Ljava/io/OutputStream;
.end method

.method public abstract write(Lokio/ByteString;)Lokio/BufferedSink;
.end method

.method public abstract write([B)Lokio/BufferedSink;
.end method

.method public abstract write([BII)Lokio/BufferedSink;
.end method

.method public abstract writeAll(Lokio/Source;)J
.end method

.method public abstract writeByte(I)Lokio/BufferedSink;
.end method

.method public abstract writeInt(I)Lokio/BufferedSink;
.end method

.method public abstract writeIntLe(I)Lokio/BufferedSink;
.end method

.method public abstract writeLong(J)Lokio/BufferedSink;
.end method

.method public abstract writeLongLe(J)Lokio/BufferedSink;
.end method

.method public abstract writeShort(I)Lokio/BufferedSink;
.end method

.method public abstract writeShortLe(I)Lokio/BufferedSink;
.end method

.method public abstract writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/BufferedSink;
.end method

.method public abstract writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
.end method

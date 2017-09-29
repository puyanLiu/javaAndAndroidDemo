.class final Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;
.super Lorg/luaj/vm2/lib/IoLib$File;


# instance fields
.field private final a:Ljava/io/RandomAccessFile;

.field private final b:Ljava/io/InputStream;

.field private final c:Ljava/io/OutputStream;

.field private d:Z

.field private e:Z

.field private final f:Lorg/luaj/vm2/lib/jse/JseIoLib;


# direct methods
.method private constructor <init>(Lorg/luaj/vm2/lib/jse/JseIoLib;Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, v0}, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;-><init>(Lorg/luaj/vm2/lib/jse/JseIoLib;Ljava/io/RandomAccessFile;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method constructor <init>(Lorg/luaj/vm2/lib/jse/JseIoLib;Ljava/io/InputStream;Lorg/luaj/vm2/lib/jse/JseIoLib$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;-><init>(Lorg/luaj/vm2/lib/jse/JseIoLib;Ljava/io/InputStream;)V

    return-void
.end method

.method private constructor <init>(Lorg/luaj/vm2/lib/jse/JseIoLib;Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, p2}, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;-><init>(Lorg/luaj/vm2/lib/jse/JseIoLib;Ljava/io/RandomAccessFile;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method constructor <init>(Lorg/luaj/vm2/lib/jse/JseIoLib;Ljava/io/OutputStream;Lorg/luaj/vm2/lib/jse/JseIoLib$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;-><init>(Lorg/luaj/vm2/lib/jse/JseIoLib;Ljava/io/OutputStream;)V

    return-void
.end method

.method private constructor <init>(Lorg/luaj/vm2/lib/jse/JseIoLib;Ljava/io/RandomAccessFile;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;-><init>(Lorg/luaj/vm2/lib/jse/JseIoLib;Ljava/io/RandomAccessFile;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method private constructor <init>(Lorg/luaj/vm2/lib/jse/JseIoLib;Ljava/io/RandomAccessFile;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lorg/luaj/vm2/lib/IoLib$File;-><init>(Lorg/luaj/vm2/lib/IoLib;)V

    iput-object p1, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->f:Lorg/luaj/vm2/lib/jse/JseIoLib;

    iput-boolean v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->d:Z

    iput-boolean v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->e:Z

    iput-object p2, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->a:Ljava/io/RandomAccessFile;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    iput-object p3, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->b:Ljava/io/InputStream;

    iput-object p4, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->c:Ljava/io/OutputStream;

    return-void

    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p3, v0

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/luaj/vm2/lib/jse/JseIoLib;Ljava/io/RandomAccessFile;Lorg/luaj/vm2/lib/jse/JseIoLib$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;-><init>(Lorg/luaj/vm2/lib/jse/JseIoLib;Ljava/io/RandomAccessFile;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->d:Z

    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->a:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :cond_0
    return-void
.end method

.method public final flush()V
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->c:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->c:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    :cond_0
    return-void
.end method

.method public final isclosed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->d:Z

    return v0
.end method

.method public final isstdfile()Z
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->a:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final peek()I
    .locals 4

    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->b:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->b:Ljava/io/InputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iget-object v1, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->b:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->a:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    iget-object v3, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v3, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/luaj/vm2/lib/jse/JseIoLib;->access$500()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final read()I
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->b:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->a:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/luaj/vm2/lib/jse/JseIoLib;->access$500()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final read([BII)I
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->a:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p3

    :goto_0
    return p3

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->b:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->b:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/luaj/vm2/lib/jse/JseIoLib;->access$500()V

    goto :goto_0
.end method

.method public final remaining()I
    .locals 4

    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->a:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iget-object v2, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final seek(Ljava/lang/String;I)I
    .locals 5

    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->a:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "set"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->a:Ljava/io/RandomAccessFile;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    :goto_0
    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    long-to-int v0, v0

    :goto_1
    return v0

    :cond_0
    const-string/jumbo v0, "end"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->a:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    int-to-long v3, p2

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->a:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    int-to-long v3, p2

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lorg/luaj/vm2/lib/jse/JseIoLib;->access$500()V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final setvbuf(Ljava/lang/String;I)V
    .locals 1

    const-string/jumbo v0, "no"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->e:Z

    return-void
.end method

.method public final tojstring()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "file ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final write(Lorg/luaj/vm2/LuaString;)V
    .locals 4

    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->c:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->c:Ljava/io/OutputStream;

    iget-object v1, p1, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    iget v2, p1, Lorg/luaj/vm2/LuaString;->m_offset:I

    iget v3, p1, Lorg/luaj/vm2/LuaString;->m_length:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    :goto_0
    iget-boolean v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->flush()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->a:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->a:Ljava/io/RandomAccessFile;

    iget-object v1, p1, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    iget v2, p1, Lorg/luaj/vm2/LuaString;->m_offset:I

    iget v3, p1, Lorg/luaj/vm2/LuaString;->m_length:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lorg/luaj/vm2/lib/jse/JseIoLib;->access$500()V

    goto :goto_0
.end method
